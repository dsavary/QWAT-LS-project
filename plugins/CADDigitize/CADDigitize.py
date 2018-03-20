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

from PyQt4.QtCore import (QSettings, QTranslator,
                          qVersion, Qt, QUrl)
from PyQt4.QtGui import (QApplication, QAction, QIcon, QDesktopServices)
from qgis.core import *
from qgis.gui import *
# Initialize Qt resources from file resources.py
import resources

from CADDigitize_tr import tr
# Import the code for the DockWidget
from CADDigitize_dockwidget import CADDigitizeDockWidget
from CADDigitize_dialog import Ui_CADDigitizeSettings
from CADDigitize_ND.CADDigitize_ND import CADDigitize_ND

import os.path


class CADDigitize:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        """Constructor.

        :param iface: An interface instance that will be passed to this class
            which provides the hook by which you can manipulate the QGIS
            application at run time.
        :type iface: QgsInterface
        """
        # Save reference to the QGIS interface
        self.iface = iface
        self.canvas = iface.mapCanvas()

        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)

        # initialize locale
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'CADDigitize_{}.qm'.format(locale))

        if os.path.exists(locale_path):
            translator = QTranslator()
            translator.load(locale_path)

            if qVersion() > '4.3.3':
                QCoreApplication.installTranslator(translator)

        # Declare instance attributes
        self.actions = []
        self.menu = tr(u"&CADDigitize")
        # TODO: We are going to let the user set this up in a future iteration
        self.toolbar = self.iface.addToolBar(u"CADDigitize")
        self.toolbar.setObjectName(u"CADDigitize")

        self.pluginIsActive = False
        self.dockwidget = None

        self.iface.currentLayerChanged["QgsMapLayer*"].connect(self.toggle)
        self.canvas.mapToolSet["QgsMapTool*"].connect(self.deactivate)

    def add_action(
        self,
        icon_path,
        text,
        callback,
        enabled_flag=True,
        add_to_menu=True,
        add_to_toolbar=True,
        status_tip=None,
        whats_this=None,
        parent=None
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

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if add_to_toolbar:
            self.toolbar.addAction(action)

        if add_to_menu:
            self.iface.addPluginToVectorMenu(
                self.menu,
                action)

        self.actions.append(action)

        return action

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""

        icon_path = ':/plugins/CADDigitize/icon.svg'
        self.add_action(
            icon_path,
            text=tr(u'CADDigitize'),
            callback=self.run,
            enabled_flag=False,
            parent=self.iface.mainWindow())

        icon_path = None
        l = [[tr(u"&Help"), self.doHelp, True],
             [tr(u"&Settings"), self.doSettings, True],
             [tr(u"&Numerical Digitize"),
              self.doNumericalDigitize, False]]
        for i in l:
            self.add_action(icon_path, i[0], i[1], i[2],
                            add_to_toolbar=False,
                            parent=self.iface.mainWindow())

    # -------------------------------------------------------------------------
    def onClosePlugin(self):
        """Cleanup necessary items here when plugin dockwidget is closed"""

        # print "** CLOSING CADDigitize"

        # disconnects
        self.dockwidget.closingPlugin.disconnect(self.onClosePlugin)

        # remove this statement if dockwidget is to remain
        # for reuse if plugin is reopened
        # Commented next statement since it causes QGIS crashe
        # when closing the docked window:
        # self.dockwidget = None

        # self.pluginIsActive = False
        if self.dockwidget is not None:
            self.dockwidget.close()

    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""

        # print "** UNLOAD CADDigitize"

        for action in self.actions:
            self.iface.removePluginMenu(
                tr(u'&CADDigitize'),
                action)
            self.iface.removeToolBarIcon(action)
        # remove the toolbar
        del self.toolbar
        if self.dockwidget is not None:
            self.dockwidget.close()
            del self.dockwidget
    # -------------------------------------------------------------------------

    def run(self):
        """Run method that loads and starts the plugin"""

        if not self.pluginIsActive:
            self.pluginIsActive = True

            # print "** STARTING CADDigitize"

            # dockwidget may not exist if:
            #    first run of plugin
            #    removed on close (see self.onClosePlugin method)

            if self.dockwidget is None:
                # Create the dockwidget (after translation) and keep reference
                self.dockwidget = CADDigitizeDockWidget(self.canvas)

            # connect to provide cleanup on closing of dockwidget
            self.dockwidget.closingPlugin.connect(self.onClosePlugin)

            # show the dockwidget
            # TODO: fix to allow choice of dock location
            self.iface.addDockWidget(Qt.BottomDockWidgetArea, self.dockwidget)
        self.dockwidget.show()

    def doHelp(self):
        help_file = "file:///" + self.plugin_dir + "/help/index.html"
        QDesktopServices.openUrl(QUrl(help_file))

    def doSettings(self):
        self.settings = Ui_CADDigitizeSettings()
        self.settings.show()

    def doNumericalDigitize(self):
        self.nd = CADDigitize_ND(self.canvas.currentLayer())
        self.nd.show()
        self.canvas.refresh()

    def deactivate(self):
        pass

    def toggle(self):
        layer = self.canvas.currentLayer()
        # Decide whether the plugin button/menu is enabled or disabled
        if layer is not None:
            try:
                # disconnect, will be reconnected
                layer.editingStarted.disconnect(self.toggle)
            except:
                pass
            try:
                # when it becomes active layer again
                layer.editingStopped.disconnect(self.toggle)
            except:
                pass

            if layer.type() == QgsMapLayer.VectorLayer:
                layer.editingStarted.connect(self.toggle)
                layer.editingStopped.connect(self.toggle)

            if (layer.isEditable() and
                (layer.geometryType() == QGis.Polygon or
                 layer.geometryType() == QGis.Line)):
                if self.dockwidget is not None:
                    self.dockwidget.setEnabled(True)
                self.actions[0].setEnabled(True)  # CADDigitize
                self.actions[3].setEnabled(True)  # Numerical Digitize
            else:
                if self.dockwidget is not None:
                    self.dockwidget.setEnabled(False)
                self.actions[0].setEnabled(False)  # CADDigitize
                self.actions[3].setEnabled(False)  # Numerical Digitize
