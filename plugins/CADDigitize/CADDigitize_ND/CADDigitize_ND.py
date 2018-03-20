#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
/***************************************************************************
 CADDigitize
                                 A QGIS plugin
 CAD like tools for QGis
 Fork of Rectangles Ovals Digitizing. Inspired by CadTools, LibreCAD/AutoCAD.
                              -------------------
        begin                : 2016-01-25
        git sha              : $Format:%H$
        copyright            : (C) 2016 by Loïc BARTOLETTI
        email                : lbartoletti@tuxfamily.org
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""

from PyQt4 import QtGui, QtCore
from PyQt4.QtCore import QCoreApplication
from ui_CADDigitize_ND import Ui_CADDigitize_ND
from CADDigitize_ND_functions import *
from qgis.core import *
from qgis.utils import iface
from ..CADDigitize_tr import tr


class CADDigitize_ND(QtGui.QDialog, Ui_CADDigitize_ND):
    def __init__(self, layer):

        self.layer = layer
        self.list_functions = [f[0] for f in CADDigitize_ND_functions]
        self.list_input = CADDigitize_ND_functions_points

        QtGui.QDialog.__init__(self)

        self.setupUi(self)

        self.signalMapper = QtCore.QSignalMapper(self)
        self.signalMapper.mapped[QtGui.QWidget].connect(
            self.on_signalMapper_mapped)

        # Combobox
        self.add_row()

        self.tableWidget.resizeColumnToContents(0)
        # Add
        self.add_btn.clicked.connect(self.add_row)
        # Remove
        self.remove_btn.clicked.connect(self.remove_row)

        self.show()

    def check_state(self, *args, **kwargs):
        sender = self.sender()
        validator = sender.validator()
        state = validator.validate(sender.text(), 0)[0]
        if state == QtGui.QValidator.Acceptable:
            color = '#29F600'  # green
        else:
            color = '#EE0C00'  # red

        sender.setStyleSheet('QLineEdit { background-color: %s }' % color)

    @QtCore.pyqtSlot(QtGui.QDialog)
    def on_signalMapper_mapped(self, combobox):
        for index, i in enumerate(self.list_input[combobox.currentIndex()]):
            self.tableWidget.removeCellWidget(combobox.row, index+1)
            item = QtGui.QTableWidgetItem()

            if i is False:

                edit = QtGui.QLineEdit(self)
                edit.setEnabled(False)
#                edit.setBackground(QtGui.QColor(150,150,150))

                edit.setText("")
                self.tableWidget.setCellWidget(combobox.row, index+1, edit)

            elif i == "angle":
                SpinBox_Angle = QtGui.QDoubleSpinBox(self.tableWidget)
                SpinBox_Angle.setDecimals(2)
                SpinBox_Angle.setMaximum(360.0)
                SpinBox_Angle.setProperty("value", 0.00)
                self.tableWidget.setCellWidget(combobox.row, index+1,
                                               SpinBox_Angle)
            elif i == "double":
                SpinBox_Double = QtGui.QDoubleSpinBox(self.tableWidget)
                SpinBox_Double.setValue(0.00)
                SpinBox_Double.setMinimum(0.00)
                SpinBox_Double.setDecimals(8)
                SpinBox_Double.setMaximum(10000000.00)
                self.tableWidget.setCellWidget(combobox.row, index+1,
                                               SpinBox_Double)

            else:
                edit = QtGui.QLineEdit(self)
                # exemple: -674097.85,+6813.25
                motif = r"^[-+]?[0-9]+\.?[0-9]*,{1}[-+]?[0-9]+\.?[0-9]*$"
                regex = QtCore.QRegExp(motif)
                validator = QtGui.QRegExpValidator(regex, edit)
                edit.setValidator(validator)
                edit.textChanged.connect(self.check_state)
                edit.textChanged.emit(edit.text())

                edit.setText("")
                self.tableWidget.setCellWidget(combobox.row, index+1, edit)

    def can_validate(self):
        for i in range(0, self.tableWidget.rowCount()):
            for j in range(1, 3):  # Points columns
                widget = self.tableWidget.cellWidget(i, j)
                if widget.isEnabled() and widget.validator().validate(
                        widget.text(), 0)[0] != QtGui.QValidator.Acceptable:
                    return False
        return True

    def accept(self):
        if self.can_validate():
            task = []
            for i in range(0, self.tableWidget.rowCount()):
                ptsOpt = []
                ptsOpt.append(self.tableWidget.cellWidget(i, 0).currentIndex())
                for j in range(1, 5):
                    widget = self.tableWidget.cellWidget(i, j)
                    if widget.isEnabled() is False:
                        pass
                    elif type(widget) == QtGui.QLineEdit:
                        list_s = widget.text().split(',')
                        ptsOpt.append([float(list_s[0]), float(list_s[1])])
                    elif type(widget) == QtGui.QDoubleSpinBox:
                        ptsOpt.append(widget.value())
                    else:
                        pass

                task.append(ptsOpt)

            self.do_task(task)
            self.close()

        else:
            msgBox = QtGui.QMessageBox.critical(
                        self,
                        tr(u"Error"),
                        tr(u"All fields are not valid"))

    def do_task(self, tasks):
        caps = self.layer.dataProvider().capabilities()
        if not caps:
            return False

        self.layer.beginEditCommand("CADDigitize_ND")
        for i in tasks:
            try:
                geom = CADDigitize_ND_functions[i[0]][1](i[1:])
                feat = QgsFeature(self.layer.pendingFields())
                # Line or Polygon
                if self.layer.geometryType() == 2:
                    feat.setGeometry(geom)
                else:
                    feat.setGeometry(geom.convertToType(1, geom.isMultipart()))
                (res, outFeats) = self.layer.dataProvider().addFeatures([feat])
                self.layer.updateExtents()
            except:
                pass

        self.layer.endEditCommand()
        iface.mapCanvas().refresh()

    def add_row(self):
        self.tableWidget.insertRow(self.tableWidget.rowCount())
        combobox = QtGui.QComboBox()
        for func in self.list_functions:
            combobox.addItem(tr(func))
        combobox.currentIndexChanged.connect(self.signalMapper.map)
        combobox.row = self.tableWidget.rowCount()-1
        combobox.column = 0

        self.tableWidget.setCellWidget(combobox.row, combobox.column, combobox)

        self.on_signalMapper_mapped(combobox)
        self.signalMapper.setMapping(combobox, combobox)

    def remove_row(self):
        self.tableWidget.removeRow(self.tableWidget.currentRow())
        j = 0
        for i in range(self.tableWidget.rowCount()):
            self.tableWidget.cellWidget(i, 0).row = j
            j += 1
