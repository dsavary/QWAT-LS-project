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

import os

from PyQt4 import QtGui, uic
from PyQt4.QtCore import pyqtSignal, pyqtSlot, SIGNAL

from qgis.utils import iface
from qgis.core import QgsGeometry

from CADDigitize_tr import tr
from CADToolsMap import CADDigitize_tools
from CADCommand.CADCommand import *

import CADDigitize_feature as CF

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'CADDigitize_dockwidget_base.ui'))


class CADDigitizeDockWidget(QtGui.QDockWidget, FORM_CLASS):

    closingPlugin = pyqtSignal()

    def __init__(self, parent=None):
        """Constructor."""
        super(CADDigitizeDockWidget, self).__init__(parent)
        self.canvas = iface.mapCanvas()
        # Set up the user interface from Designer.
        # After setupUI you can access any designer object by doing
        # self.<objectname>, and you can use autoconnect slots - see
        # http://qt-project.org/doc/qt-4.8/designer-using-a-ui-file.html
        # #widgets-and-dialogs-with-auto-connect
        self.setupUi(self)
        self.activate()

    def activate(self):
        self.shapeToolbar = QtGui.QToolBar(u'CADDigitize Shape')
        self.shapeToolbar.setObjectName(u'CADDigitize Shape')
        self.optionsToolbar = QtGui.QToolBar(u'CADDigitize Options')
        self.optionsToolbar.setObjectName(u'CADDigitize Options')
        self.spacer = QtGui.QSpacerItem(0,
                                        0,
                                        QtGui.QSizePolicy.Expanding,
                                        QtGui.QSizePolicy.Maximum)

        self.shapeOptionsLayout.addWidget(self.shapeToolbar)
        self.shapeOptionsLayout.addWidget(self.optionsToolbar)
        self.shapeOptionsLayout.addItem(self.spacer)
        self.shapeOptionsLayout.setMargin(0)

        self.actions = []
        self.tools = []
        self.toolEmit = []
        # populate shapeToolbar
        # create QToolButtons
        for i, t in enumerate(CADDigitize_tools.actions):
            if i >= len(self.tools):
                self.tools.append([])
                self.toolEmit.append([])
            qtool = QtGui.QToolButton(self.shapeToolbar)
            qtool.setPopupMode(QtGui.QToolButton.MenuButtonPopup)
            qtool.setObjectName(t)
            for j, a in enumerate(CADDigitize_tools.actionTools[i]):
                qtool.addAction(
                    self.add_action(self.shapeToolbar, i, j,
                                    a[0], a[1], a[2],
                                    a[3], a[4], a[5], a[6]))
                self.tools[i].append(qtool)
                callback = a[2]
                self.toolEmit[i].append(callback(self.canvas,
                                        iface.cadDockWidget(), 3))
            qtool.setDefaultAction(self.actions[i][0])
            self.shapeToolbar.addWidget(qtool)
        self.optionsToolbar.setFixedHeight(self.shapeToolbar.height())

        self.ToolCMD.returnPressed.connect(self.doCMD)

    def doCMD(self):
        r = execute_cmd(self.ToolCMD.text())
        self.textBrowser.append(self.ToolCMD.text())
        if r == 1:
            self.textBrowser.append(
                tr(u"Feature added"))
        else:
            self.textBrowser.append(
                tr(u"Error"))

        self.ToolCMD.clear()

    def closeEvent(self, event):
        self.closingPlugin.emit()
        event.accept()

    @pyqtSlot(QgsGeometry, str)
    def on_cadTool(self, geom, command):
        CF.createFeature(self.canvas, geom, command)

    def toolButtonsCallback(self, callback, indToolsShape, indTools):
        tool = self.findChild(QtGui.QToolButton,
                              CADDigitize_tools.actions[indToolsShape])
        tool.setDefaultAction(self.actions[indToolsShape][indTools])
        tool.setChecked(True)
        for i in range(len(self.toolEmit)):
            for j in range(len(self.toolEmit[i])):
                try:
                    self.toolEmit[i][j].cadTool.disconnect(
                        self.on_cadTool)
                except:
                    pass
        if self.toolEmit[indToolsShape][indTools].receivers(
                SIGNAL("cadTool(QgsGeometry, str)")) == 0:
                self.toolEmit[indToolsShape][indTools].cadTool.connect(
                    self.on_cadTool)

        self.canvas.setMapTool(self.toolEmit[indToolsShape][indTools])

    def add_action(
        self,
        parent,
        indToolsShape,
        indTools,
        icon_path,
        text,
        callback,
        status_tip=None,
        whats_this=None,
        enabled_flag=True,
        visible_flag=True
            ):
        """Add a toolbar icon to the toolbar.

        :param icon_path: Path to the icon for this action. Can be a resource
            path (e.g. ':/plugins/foo/bar.png') or a normal file system path.
        :type icon_path: str

        :param text: Text that should be shown in menu items for this action.
        :type text: str

        :param callback: Function to be called when the action is triggered.
        :type callback: function

        :param enabled_flag: A flag indicating if the action should be enabled
            by default. Defaults to True.
        :type enabled_flag: bool

        :param add_to_menu: Flag indicating whether the action should also
            be added to the menu. Defaults to True.
        :type add_to_menu: bool

        :param add_to_toolbar: Flag indicating whether the action should also
            be added to the toolbar. Defaults to True.
        :type add_to_toolbar: bool

        :param status_tip: Optional text to show in a popup when mouse pointer
            hovers over the action.
        :type status_tip: str

        :param parent: Parent widget for the new action. Defaults None.
        :type parent: QWidget

        :param whats_this: Optional text to show in the status bar when the
            mouse pointer hovers over the action.

        :returns: The action that was created. Note that the action is also
            added to self.actions list.
        :rtype: QAction
        """

        icon = QtGui.QIcon(icon_path)
        action = QtGui.QAction(icon, text, parent)

        action.triggered.connect(lambda: self.toolButtonsCallback(
                                            callback,
                                            indToolsShape,
                                            indTools))
        action.setEnabled(enabled_flag)
        action.setVisible(visible_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if indToolsShape >= len(self.actions):
            self.actions.append([])
        self.actions[indToolsShape].append(action)

        return action
