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

from qgis.gui import *
from qgis.core import *


def changegeomSRID(canvas, geom):
    layer = canvas.currentLayer()
    renderer = canvas.mapRenderer()
    layerCRSSrsid = layer.crs().srsid()
    projectCRSSrsid = renderer.destinationCrs().srsid()
    if layerCRSSrsid != projectCRSSrsid:
        g = QgsGeometry.fromPoint(geom)
        g.transform(QgsCoordinateTransform(projectCRSSrsid, layerCRSSrsid))
        retPoint = g.asPoint()
    else:
        retPoint = geom

    return retPoint


def snappedAbility(snap, segment=False):
    """
    Check if you can snap or not.
    You can if snap != -1 and when segment = True if snap >= 1
    """
    if snap == -1:
        return False
    elif segment is True and snap == 0:
        return False

    return True


def snappedSegment(result, retVertexNr=False):

    # Check Number position of vertexes
    # If snappedVertexNr = -1 so we clicked on the segment
    # Else, we need to fix some stuff because of tolerance
    # If we clicked before the segment [pSnapped before p1 p2]
    # If the feature is only with p1 and p2 VertexNr are normally 0 and 1
    # if beforeVertexNr and afterVertexNr aren't found
    # we put point to SnappedVertex
    # Else on linestring with more than 2 points,
    # we have to check if afterVertexNr is > snappedVertexNr

    if result[0].snappedVertexNr == -1:  # Snapped on the feature
        (point1, p1Nr) = (result[0].beforeVertex, result[0].beforeVertexNr)
        (point2, p2Nr) = (result[0].afterVertex, result[0].afterVertexNr)
    else:
        if result[0].beforeVertexNr == -1:
            (point1, p1Nr) = (result[0].snappedVertex,
                              result[0].snappedVertexNr)
        else:
            (point1, p1Nr) = (result[0].beforeVertex, result[0].beforeVertexNr)
        if result[0].afterVertexNr == -1 or \
           (result[0].afterVertexNr > result[0].snappedVertexNr and
           result[0].beforeVertexNr != -1):
            (point2, p1Nr) = (result[0].snappedVertex,
                              result[0].snappedVertexNr)
        else:
            (point2, p2Nr) = (result[0].afterVertex, result[0].afterVertexNr)

    if retVertexNr:
        return (point1, p1Nr), (point2, p2Nr)
    else:
        return point1, point2


def snappedPoint(canvas, event, segment=False, returnResultSnapped=False,
                 retVertexNr=False):
    mapTool = QgsMapTool(canvas)
    # get QgsSnappingUtils
    qsu = canvas.snappingUtils()
    # qsu = QgsMapCanvasSnappingUtils(iface.mapCanvas())
    point = mapTool.toMapCoordinates(event.pos())

    # point = changegeomSRID(canvas, currpoint)
    # mapTool.toMapCoordinates(qsu.currentLayer(), currpoint))
    snapped = False
    if segment:
        point1, point2 = None, None

    snapper = QgsSnapper(canvas.mapSettings())
    snapper.setSnapMode(0)

    # 3 modes
    # 0 : SnapCurrentLayer, 1 : SnapAllLayers, 2 : SnapAdvanced
    mode = qsu.snapToMapMode()

    result = []

    if mode == 0:
        g = snapper.SnapLayer()
        g.mLayer = qsu.currentLayer()
        g.mSnapTo, g.mTolerance, g.mUnitType = qsu.defaultSettings()
        # Off : 0, but enum is normally sommet : 0, segment :1, both : 2
        g.mSnapTo -= 1

        if snappedAbility(g.mSnapTo, segment):
            if segment:
                g.mSnapTo = QgsSnapper.SnapToSegment
            snapper.setSnapLayers([g])
            retval, result = snapper.snapMapPoint(point)
            if result != []:
                point = result[0].snappedVertex
                if segment:
                    point1, point2 = snappedSegment(result, retVertexNr)
                snapped = True

    elif mode == 1:
        allLayers = canvas.layers()
        listSnapLayers = []

        snap, tol, unit = qsu.defaultSettings()
        snap -= 1

        if snappedAbility(snap, segment):
            j = 0
            for i in allLayers:
                g = snapper.SnapLayer()
                g.mLayer = i
                if segment:
                    snap = QgsSnapper.SnapToSegment
                g.mSnapTo, g.mTolerance, g.mUnitType = snap, tol, unit
                listSnapLayers.append(g)

            snapper.setSnapLayers(listSnapLayers)
            retval, result = snapper.snapMapPoint(point)
            if result != []:
                point = result[0].snappedVertex
                if segment:
                    point1, point2 = snappedSegment(result, retVertexNr)
                snapped = True

    elif mode == 2:
        allLayers = canvas.layers()
        listSnapLayers = []

        for i in allLayers:
            (layerid, enabled, snapType,
             tolUnits, tol,
             avoidInt) = QgsProject.instance().snapSettingsForLayer(i.id())
            if enabled and snappedAbility(snapType, segment):
                g = snapper.SnapLayer()
                g.mLayer = i
                if segment:
                    snapType = QgsSnapper.SnapToSegment
                g.mSnapTo, g.mTolerance, g.mUnitType = snapType, tol, tolUnits
                listSnapLayers.append(g)

        snapper.setSnapLayers(listSnapLayers)
        retval, result = snapper.snapMapPoint(point)
        if result != []:
            point = result[0].snappedVertex
            if segment:
                point1, point2 = snappedSegment(result, retVertexNr)
            snapped = True

    if segment and returnResultSnapped is False:
        return snapped, point1, point2

    elif segment and returnResultSnapped:
        retRes = None
        if result != []:
            retRes = result[0]
        return snapped, point1, point2, retRes

    return snapped, point
