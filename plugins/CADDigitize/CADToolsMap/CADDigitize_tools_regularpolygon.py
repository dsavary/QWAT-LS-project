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

from CADOptionsToolbar.CADOptionsRegularPolygon import CADOptionsToolbar_RPolygon
from ..CADShape.CADRegularPolygon import *
from ..CADShape import CADUtils

from rubber import *
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from qgis.gui import *
from qgis.utils import iface
import math
from ..CADDigitize_tr import tr


class CircleTool(QgsMapToolCapture):
    cadTool = pyqtSignal(QgsGeometry, str)

    def __init__(self, canvas, dock, captureMode):
        super(CircleTool, self).__init__(canvas, dock, captureMode)
        self.cadDock = dock
        self.canvas = canvas

    def clear(self):
        self.nbPoints = 0
        if self.rb:
            self.rb.reset(True)
            self.rb = None

        self.optionsToolbar.toolBarClear()
        self.canvas.refresh()

    def keyReleaseEvent(self,  event):
        if event.key() == Qt.Key_Escape:
            self.clear()
            return

    def showSettingsWarning(self):
        pass

    def getEdges(self):
        return QSettings().value("/CADDigitize/rpolygon/nbedges", 5, type=int)

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.optionsToolbar = CADOptionsToolbar_RPolygon()
        # Dirty hack...
        self.refresh = self.optionsToolbar.dock.findChild(QCheckBox,
                                                          u"chk_refresh")
        self.shapeInfo = self.optionsToolbar.dock.findChild(QLabel,
                                                            u"ShapeInfo")
        self.textBrowser = self.optionsToolbar.dock.findChild(QTextBrowser,
                                                              u"textBrowser")
        self.refresh.stateChanged[int].connect(
            lambda cls: self.shapeInfo.clear())
        self.shapeInfo.clear()
        self.cadDock.enable()

    def deactivate(self):
        self.clear()
        self.optionsToolbar.toolBarClear()
        self.cadDock.disable()

    def topologicalGeom(self, geom):
        # topological
        # add points to other features to keep topology up-to-date
        topologicalEditing = QgsProject.instance(). \
            readNumEntry("Digitizing", "/TopologicalEditing", 0)

        # use always topological editing for avoidIntersection.
        # Otherwise, no way to guarantee the geometries
        # don't have a small gap in between.
        vLayer = self.currentVectorLayer()
        intersectionLayers = QgsProject.instance(). \
            readListEntry("Digitizing", "/AvoidIntersectionsList")
        avoidIntersection = len(intersectionLayers[0])
        # try to add topological points also to background layers
        if avoidIntersection:
            for lIt in intersectionLayers[0]:
                ml = QgsMapLayerRegistry.instance().mapLayer(lIt)
                vl = ml
                # can only add topological points if
                # background layer is editable.
                if (vl and vl.geometryType() == QGis.Polygon and
                        vl.isEditable()):
                    vl.addTopologicalPoints(geom)
            geom.avoidIntersections()
        elif (topologicalEditing[0]):
            vLayer.addTopologicalPoints(geom)

        return geom

    def returnGeometry(self, CADgeom, command):
        self.clear()
        if CADgeom is not None:
            self.cadTool.emit(self.topologicalGeom(
                CADgeom.exportToQgsGeometry()), command)
            self.textBrowser.append("*"*10)
            self.textBrowser.append(
                tr(u"At: " + QDateTime.currentDateTime().toString(
                    Qt.LocaleDate),
                    "Space before date and time"))
            self.textBrowser.append(str(CADgeom))

    def isZoomTool(self):
        return False

    def isTransient(self):
        return False

    def isEditTool(self):
        return True


class RPolygon2CornersTool(CircleTool):
    def __init__(self, canvas, dock, captureMode):
        super(RPolygon2CornersTool, self).__init__(canvas, dock, captureMode)
        self.cadDock = dock
        self.cadDock.enable()
        self.canvas = canvas
        self.rb, self.rbPoint = None, None
        self.clear()

    def clear(self):
        self.nbPoints = 0
        if self.rb:
            self.rb.reset(True)
            self.rb = None
        if self.rbPoint:
            self.rbPoint.reset(True)
            self.rbPoint = None

        self.p1, self.p2 = None, None
        self.canvas.refresh()

    def cadCanvasReleaseEvent(self, event):
        if self.nbPoints == 0:
            self.rb = myRubberDigit(self.canvas)
        else:
            self.rb.reset(True)
            self.rb = None
            self.canvas.refresh()

        pointMap = self.cadDock.currentPoint()

        if self.nbPoints == 0:
            self.p1 = QgsPoint(pointMap[0])
        else:
            self.p2 = QgsPoint(pointMap[0])

        self.nbPoints += 1

        if self.nbPoints == 2:
            geom = CADRegularPolygon.by2Corners(self.p1, self.p2,
                                                self.getEdges())
            if geom:
                self.returnGeometry(geom,
                                    tr(u"Regular polygon by 2 corners"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints >= 1:
            geom = CADRegularPolygon.by2Corners(self.p1, point,
                                                self.getEdges())
            if geom:
                self.rb.setToGeometry(geom.exportToQgsGeometry(), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))


class RPolygonByCenterPointTool(CircleTool):
    def __init__(self, canvas, dock, captureMode):
        super(RPolygonByCenterPointTool, self).__init__(canvas,
                                                        dock, captureMode)
        self.cadDock = dock
        self.cadDock.enable()
        self.canvas = canvas
        self.rb, self.rbPoint = None, None
        self.clear()

    def clear(self):
        self.nbPoints = 0
        if self.rb:
            self.rb.reset(True)
            self.rb = None
        if self.rbPoint:
            self.rbPoint.reset(True)
            self.rbPoint = None

        self.p1, self.p2 = None, None
        self.canvas.refresh()

    def cadCanvasReleaseEvent(self, event):
        if self.nbPoints == 0:
            self.rb = myRubberDigit(self.canvas)
        else:
            self.rb.reset(True)
            self.rb = None
            self.canvas.refresh()

        pointMap = self.cadDock.currentPoint()

        if self.nbPoints == 0:
            self.p1 = QgsPoint(pointMap[0])
        else:
            self.p2 = QgsPoint(pointMap[0])

        self.nbPoints += 1

        if self.nbPoints == 2:
            geom = CADRegularPolygon.byCenterAndCorner(self.p1,
                                                       self.p2,
                                                       self.getEdges())
            if geom:
                self.returnGeometry(geom,
                                    tr(u"Regular polygon by center and point"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints >= 1:
            geom = CADRegularPolygon.byCenterAndCorner(self.p1,
                                                       point,
                                                       self.getEdges())
            if geom:
                self.rb.setToGeometry(geom.exportToQgsGeometry(), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))
