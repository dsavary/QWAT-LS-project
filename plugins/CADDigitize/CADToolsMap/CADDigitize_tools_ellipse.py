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

from CADOptionsToolbar.CADOptionsEllipse import CADOptionsToolbar_Ellipse
from ..CADShape.CADEllipse import *
from ..CADShape.CADPoint import *
from rubber import *
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from qgis.gui import *
from qgis.utils import iface
import math
from ..CADDigitize_tr import tr


class EllipseTool(QgsMapToolCapture):
    cadTool = pyqtSignal(QgsGeometry, str)

    def __init__(self, canvas, dock, captureMode):
        super(EllipseTool, self).__init__(canvas, dock, captureMode)

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

    def getSegments(self):
        return QSettings().value("/CADDigitize/ellipse/segments", 36, type=int)

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.optionsToolbar = CADOptionsToolbar_Ellipse()
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
        self.cadDock.show()

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
                CADgeom.exportToQgsGeometry(self.getSegments())), command)
            self.textBrowser.append("*"*10)
            self.textBrowser.append(
                tr(u"At: "+QDateTime.currentDateTime().toString(Qt.LocaleDate),
                   "Space before date and time"))
            self.textBrowser.append(str(CADgeom))

    def isZoomTool(self):
        return False

    def isTransient(self):
        return False

    def isEditTool(self):
        return True


class EllipseByCenter2PointsTool(EllipseTool):
    def __init__(self, canvas, dock, captureMode):
        super(EllipseByCenter2PointsTool, self).__init__(
            canvas, dock, captureMode)
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

        self.p1, self.p2, self.p3 = None, None, None
        self.canvas.refresh()

    def cadCanvasReleaseEvent(self, event):
        if self.nbPoints == 0:
            self.rb = myRubberDigit(self.canvas)
        elif self.nbPoints == 2:
            self.rb.reset(True)
            self.rb = None
            self.canvas.refresh()

        pointMap = self.cadDock.currentPoint()

        if self.nbPoints == 0:
            self.p1 = QgsPoint(pointMap[0])
        elif self.nbPoints == 1:
            self.p2 = QgsPoint(pointMap[0])
        else:
            self.p3 = QgsPoint(pointMap[0])

        self.nbPoints += 1

        if self.nbPoints == 3:
            geom = CADEllipse.byCenter2Points(self.p1,
                                              self.p2,
                                              self.p3)
            if geom is not None:
                self.returnGeometry(geom,
                                    tr(u"Ellipse by center and 2 points"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints == 1:
            self.rb.setToGeometry(
                QgsGeometry.fromPolyline([self.p1, point]), None)

        if self.nbPoints >= 2 and \
                CADPoint.isCollinear(self.p1, self.p2, point) != 0:

            geom = CADEllipse.byCenter2Points(self.p1,
                                              self.p2,
                                              point)
            if geom is not None:
                self.rb.setToGeometry(geom.exportToQgsGeometry(
                                       self.getSegments()), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))


class EllipseByFociPointTool(EllipseTool):
    def __init__(self, canvas, dock, captureMode):
        super(EllipseByFociPointTool, self).__init__(
            canvas, dock, captureMode)
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

        self.p1, self.p2, self.p3 = None, None, None
        self.canvas.refresh()

    def cadCanvasReleaseEvent(self, event):
        if self.nbPoints == 0:
            self.rb = myRubberDigit(self.canvas)
        elif self.nbPoints == 2:
            self.rb.reset(True)
            self.rb = None
            self.canvas.refresh()

        pointMap = self.cadDock.currentPoint()

        if self.nbPoints == 0:
            self.p1 = QgsPoint(pointMap[0])
        elif self.nbPoints == 1:
            self.p2 = QgsPoint(pointMap[0])
        else:
            self.p3 = QgsPoint(pointMap[0])

        self.nbPoints += 1

        if self.nbPoints == 3:
            geom = CADEllipse.fromFoci(self.p1,
                                       self.p2,
                                       self.p3)
            if geom is not None:
                self.returnGeometry(geom,
                                    tr(u"Ellipse by foci and a point"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints == 1:
            self.rb.setToGeometry(
                QgsGeometry.fromPolyline([self.p1, point]), None)

        if self.nbPoints >= 2 and \
                CADPoint.isCollinear(self.p1, self.p2, point) != 0:

            geom = CADEllipse.fromFoci(self.p1,
                                       self.p2,
                                       point)
            if geom is not None:
                self.rb.setToGeometry(geom.exportToQgsGeometry(
                                       self.getSegments()), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))


class EllipseFromCenterTool(EllipseTool):
    def __init__(self, canvas, dock, captureMode):
        super(EllipseFromCenterTool, self).__init__(canvas, dock, captureMode)
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
            self.returnGeometry(CADEllipse.byCenterPoint(
                self.p1, self.p2),
                                tr(u"Ellipse from center"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints >= 1:
            geom = CADEllipse.byCenterPoint(self.p1,
                                            point)
            self.rb.setToGeometry(geom.exportToQgsGeometry(self.getSegments()),
                                  None)
            if self.refresh.isChecked():
                self.shapeInfo.setText(str(geom))


class EllipseByExtentTool(EllipseTool):
    def __init__(self, canvas, dock, captureMode):
        super(EllipseByExtentTool, self).__init__(canvas, dock, captureMode)
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
            self.returnGeometry(CADEllipse.byExtent(
                self.p1, self.p2), tr(u"Ellipse by extent"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints >= 1:
            geom = CADEllipse.byExtent(self.p1, point)
            self.rb.setToGeometry(geom.exportToQgsGeometry(self.getSegments()),
                                  None)
            if self.refresh.isChecked():
                self.shapeInfo.setText(str(geom))


class EllipseByCenter3PointsTool(EllipseTool):
    pass


class EllipseBy4PointsTool(EllipseTool):
    pass
