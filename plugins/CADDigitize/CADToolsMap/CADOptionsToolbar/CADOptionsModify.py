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

from PyQt4.QtGui import QRadioButton, QApplication
from PyQt4.QtCore import Qt, QCoreApplication
from CADOptionsToolbar import CADOptionsToolbar
from qgis.core import QGis
from ...CADDigitize_tr import tr


class CADOptionsToolbar_ModifyExtend(CADOptionsToolbar):
    def __init__(self, layerType):
        super(CADOptionsToolbar_ModifyExtend, self).__init__()

        self.add_btn = QRadioButton(
            tr(u"Add"), self.optionsToolBar)
        self.add_btn.setToolTip(
            tr(u"Add extension"))
        self.add_btn.setObjectName("add_rbtn")
        self.modify_btn = QRadioButton(
            tr(u"Modify"), self.optionsToolBar)
        self.modify_btn.setToolTip(
            tr(u"Modify the entity"))
        self.modify_btn.setObjectName("modify_rbtn")
        self.extend_btn = QRadioButton(
            tr(u"Extend"), self.optionsToolBar)
        self.extend_btn.setToolTip(
            tr(u"Add an extended line"))
        self.extend_btn.setObjectName("extend_rbtn")
        self.optionsToolBar.addWidget(self.add_btn)
        self.optionsToolBar.addWidget(self.modify_btn)
        self.optionsToolBar.addWidget(self.extend_btn)
        self.add_btn.setChecked(True)

        if layerType == QGis.Polygon:
            self.modify_btn.setChecked(True)
            self.add_btn.setEnabled(False)
            self.extend_btn.setEnabled(False)
        else:
            self.add_btn.setEnabled(True)
            self.extend_btn.setEnabled(True)


class CADOptionsToolbar_ModifyTrim(CADOptionsToolbar):
    def __init__(self, layerType):
        super(CADOptionsToolbar_ModifyTrim, self).__init__()

        self.add_btn = QRadioButton(
            tr(u"Add"), self.optionsToolBar)
        self.add_btn.setToolTip(
            tr(u"Add trimed segment"))
        self.add_btn.setObjectName("add_rbtn")
        self.modify_btn = QRadioButton(
            tr(u"Modify"), self.optionsToolBar)
        self.modify_btn.setToolTip(
            tr(u"Modify the entity"))
        self.modify_btn.setObjectName("modify_rbtn")
        self.extend_btn = QRadioButton(
            tr(u"Extend"), self.optionsToolBar)
        self.extend_btn.setToolTip(
            tr(u"Add the opposite trimed segment"))
        self.extend_btn.setObjectName("extend_rbtn")
        self.optionsToolBar.addWidget(self.add_btn)
        self.optionsToolBar.addWidget(self.modify_btn)
        self.optionsToolBar.addWidget(self.extend_btn)
        self.add_btn.setChecked(True)

        if layerType == QGis.Polygon:
            self.modify_btn.setChecked(True)
            self.add_btn.setEnabled(False)
            self.extend_btn.setEnabled(False)
        else:
            self.add_btn.setEnabled(True)
            self.extend_btn.setEnabled(True)


class CADOptionsToolbar_Modify(CADOptionsToolbar):
    def __init__(self, layerType):
        super(CADOptionsToolbar_Modify, self).__init__()

        self.add_btn = QRadioButton(
            tr(u"Add"), self.optionsToolBar)
        self.add_btn.setToolTip(
            tr(u"Add extension"))
        self.add_btn.setObjectName("add_rbtn")
        self.modify_btn = QRadioButton(
            tr(u"Modify"), self.optionsToolBar)
        self.modify_btn.setToolTip(
            tr(u"Modify the entity"))
        self.modify_btn.setObjectName("modify_rbtn")
        self.extend_btn = QRadioButton(
            tr(u"Add opposite"), self.optionsToolBar)
        self.extend_btn.setToolTip(
            tr(u"Add an extended line"))
        self.extend_btn.setObjectName("extend_rbtn")
        self.optionsToolBar.addWidget(self.add_btn)
        self.optionsToolBar.addWidget(self.modify_btn)
        self.optionsToolBar.addWidget(self.extend_btn)
        self.add_btn.setChecked(True)

        if layerType == QGis.Polygon:
            self.modify_btn.setChecked(True)
            self.add_btn.setEnabled(False)
            self.extend_btn.setEnabled(False)
        else:
            self.add_btn.setEnabled(True)
            self.extend_btn.setEnabled(True)


class CADOptionsToolbar_ModifyOffset(CADOptionsToolbar):
    def __init__(self, layerType):
        super(CADOptionsToolbar_ModifyOffset, self).__init__()

        self.segmentChoice = QRadioButton(
            tr(u"Segment"))
        self.segmentChoice.setChecked(Qt.Checked)
        self.featureChoice = QRadioButton(
            tr(u"Feature"))
        self.optionsToolBar.addWidget(self.segmentChoice)
        self.optionsToolBar.addWidget(self.featureChoice)

        if layerType == QGis.Polygon:
            self.segmentChoice.setChecked(Qt.Unchecked)
            self.featureChoice.setChecked(Qt.Checked)
            self.segmentChoice.setEnabled(False)
            self.featureChoice.setEnabled(False)
        elif layerType == QGis.Line:
            self.segmentChoice.setEnabled(True)
            self.featureChoice.setEnabled(True)
