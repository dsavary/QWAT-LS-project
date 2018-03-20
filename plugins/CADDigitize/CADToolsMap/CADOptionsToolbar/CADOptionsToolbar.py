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

from PyQt4.QtGui import (QToolBar, QDockWidget,
                         QWidget, QHBoxLayout)
from PyQt4.QtCore import QPoint
from qgis.utils import iface


class CADOptionsToolbar(QToolBar):
    def __init__(self):
        super(CADOptionsToolbar, self).__init__()
        ldock = iface.mainWindow().findChildren(
                                            QDockWidget,
                                            u'CADDigitizeDockWidgetBase')
        self.dock = ldock[len(ldock)-1]
#        self.dock = iface.mainWindow().findChild(
#                                            QDockWidget,
#                                            u'CADDigitizeDockWidgetBase')
        self.optionsToolBar = self.dock.findChild(
                QToolBar, u"CADDigitize Options")
        self.shapeToolBar = self.dock.findChild(
                QToolBar, u"CADDigitize Shape")
        self.optionsToolBar.setFixedHeight(self.shapeToolBar.height())

        self.toolBarClear()

    def toolBarClear(self):
        self.optionsToolBar.clear()
