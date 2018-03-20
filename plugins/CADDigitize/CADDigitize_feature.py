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

from PyQt4.QtCore import QSettings

from qgis.core import *
from qgis.gui import *


def CRSTransform(mapCanvas, geom):
    layer = mapCanvas.currentLayer()
    renderer = mapCanvas.mapSettings()
    layerCRSSrsid = layer.crs().srsid()
    projectCRSSrsid = renderer.destinationCrs().srsid()

    # On the Fly reprojection.
    if layerCRSSrsid != projectCRSSrsid:
        geom.transform(QgsCoordinateTransform(projectCRSSrsid,
                                              layerCRSSrsid))


def createFeature(mapCanvas, geom, editCommandTxt):
    if not geom.isEmpty():
        layer = mapCanvas.currentLayer()
        layer.beginEditCommand(editCommandTxt)
        settings = QSettings()

        CRSTransform(mapCanvas, geom)
        provider = layer.dataProvider()

        f = QgsFeature()
        # Line or Polygon
        if layer.geometryType() == 2:
            f.setGeometry(geom)
        else:
            f.setGeometry(geom.convertToType(1, geom.isMultipart()))

        # add attribute fields to feature
        fields = layer.pendingFields()

        # vector api change update
        f.initAttributes(fields.count())
        for i in range(fields.count()):
            f.setAttribute(i, provider.defaultValue(i))

        disable_attributes = settings.value(
            "/qgis/digitizing/disable_enter_attribute_values_dialog",
            False, type=bool)

        dlg = None

        if disable_attributes:
            cancel = 1
        else:
            dlg = QgsAttributeDialog(layer, f, False)
            dlg.setIsAddDialog(True)
            if not dlg.dialog().exec_():
                cancel = 0
            else:
                layer.destroyEditCommand()
                cancel = 1

        if cancel == 1:
            if dlg:
                f.setAttributes(dlg.feature().attributes())
            layer.addFeature(f)
            layer.endEditCommand()

    mapCanvas.refresh()
