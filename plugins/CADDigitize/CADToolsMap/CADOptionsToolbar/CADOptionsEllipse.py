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

from PyQt4.QtCore import QSettings, QCoreApplication
from PyQt4.QtGui import QSpinBox, QApplication
from CADOptionsToolbar import CADOptionsToolbar
from ...CADDigitize_tr import tr


class CADOptionsToolbar_Ellipse(CADOptionsToolbar):
    def __init__(self):
        super(CADOptionsToolbar_Ellipse, self).__init__()
        self.settings = QSettings()

        self.spinBox = QSpinBox(self.optionsToolBar)
        self.spinBox.setMinimum(3)
        self.spinBox.setMaximum(3600)
        segvalue = self.settings.value("/CADDigitize/ellipse/segments",
                                       36, type=int)
        if not segvalue:
            self.settings.setValue("/CADDigitize/ellipse/segments", 36)
        self.spinBox.setValue(segvalue)
        self.spinBox.setSingleStep(1)
        self.spinBoxAction = self.optionsToolBar.addWidget(self.spinBox)
        self.spinBox.setToolTip(
            tr(u"Number of points"))
        self.spinBoxAction.setEnabled(True)

        self.spinBox.valueChanged["int"].connect(self.segmentsettingsEllipse)

    def segmentsettingsEllipse(self):
        self.settings.setValue("/CADDigitize/ellipse/segments",
                               self.spinBox.value())
