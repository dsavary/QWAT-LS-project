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

from CADOptionsToolbar.CADOptionsCircle import CADOptionsToolbar_Circle
from ..CADShape.CADCircle import *
from ..CADShape.CADPoint import *
from ..CADShape.CADLine import *
from ..CADDigitize_dialog import Ui_CADDigitizeDialogRadius
from rubber import *
from snap import *
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
        return QSettings().value("/CADDigitize/circle/segments", 36, type=int)

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.optionsToolbar = CADOptionsToolbar_Circle()
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


class CircleBy2PointsTool(CircleTool):
    def __init__(self, canvas, dock, captureMode):
        super(CircleBy2PointsTool, self).__init__(canvas, dock, captureMode)
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
            self.returnGeometry(CADCircle.by2Points(
                self.p1, self.p2), tr(u"Circle by 2 points"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints >= 1:
            circle = CADCircle.by2Points(self.p1, point)
            geom = circle.exportToQgsGeometry(
                self.getSegments())
            self.rb.setToGeometry(geom, None)
            if self.refresh.isChecked():
                self.shapeInfo.setText(str(circle))


class CircleBy3PointsTool(CircleTool):
    def __init__(self, canvas, dock, captureMode):
        super(CircleBy3PointsTool, self).__init__(canvas, dock, captureMode)
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
            geom = CADCircle.by3Points(self.p1,
                                       self.p2,
                                       self.p3)
            if geom is not None:
                self.returnGeometry(geom,
                                    tr(u"Circle by 3 points"))

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

            circle = CADCircle.by3Points(self.p1,
                                         self.p2,
                                         point)
            if circle is not None:
                self.rb.setToGeometry(circle.exportToQgsGeometry(
                                       self.getSegments()), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(circle))


class CircleByCenterPointTool(CircleTool):
    def __init__(self, canvas, dock, captureMode):
        super(CircleByCenterPointTool, self).__init__(
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
            self.returnGeometry(CADCircle.byCenterPoint(self.p1, self.p2),
                                tr(u"Circle by center and a point"))

        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        point = event.mapPoint()
        if self.rbPoint is None:
            self.rbPoint = myRubberPointSnap(self.canvas)

        self.rbPoint.setToGeometry(QgsGeometry.fromPoint(point), None)

        if self.nbPoints >= 1:
            circle = CADCircle.byCenterPoint(self.p1, point)
            geom = circle.exportToQgsGeometry(
                self.getSegments())
            self.rb.setToGeometry(geom, None)
            if self.refresh.isChecked():
                self.shapeInfo.setText(str(circle))


class CircleBy2TangentsTool(CircleTool):
    def __init__(self, canvas, dock, captureMode):
        super(CircleBy2TangentsTool, self).__init__(
            canvas, dock, captureMode)
        self.cadDock = dock
        self.cadDock.enable()
        self.canvas = canvas
        self.rb, self.rb1, self.rb2, self.rb_points = None, None, None, None
        self.rbSegment = None
        self.settings = QSettings()

        self.initGui()
        self.clear()

    def clear(self):
        self.nbPoints = 0
        self.cad_p1, self.cad_p2, self.curr = [QgsPoint()] * 3
        self.point1, self.point2 = [QgsPoint()] * 2
        self.p1, self.p2, self.p3, self.p4 = [QgsPoint()] * 4
        self.p11, self.p12, self.p21, self.p22 = [QgsPoint()] * 4
        self.circ_rayon = -1
        self.setval = False
        if self.rb:
            self.rb.reset(True)
        if self.rb1:
            self.rb1.reset(True)
        if self.rb2:
            self.rb2.reset(True)
        if self.rb_points:
            self.rb_points.reset(True)
        if self.rbSegment:
            self.rbSegment.reset(True)
        self.rb, self.rb1, self.rb2, self.rb_points = None, None, None, None
        self.rbSegment = None

        self.canvas.refresh()
        if self.dialog:
            self.dialog.SpinBox_Radius.setValue(0)
            self.dialog.close()

    def setRadiusValue(self):
        self.circ_rayon = self.dialog.SpinBox_Radius.value()
        if self.circ_rayon is not None and self.circ_rayon > 0:
            self.curr.setX(self.cad_p1.x() + math.sin(self.circ_rayon))
            self.curr.setY(self.cad_p1.y() + math.cos(self.circ_rayon))
            segments = self.getSegments()

            geom = CADCircle.byCenterRadius(self.cad_p1, self.circ_rayon). \
                exportToQgsGeometry(segments)
            self.rb.setToGeometry(geom, None)

    def getPossibleCenter(self):
        self.settings = QSettings()
        of_join = self.settings.value("Qgis/digitizing/offset_join_style",
                                      0,
                                      type=int)
        of_quad = self.settings.value("Qgis/digitizing/offset_quad_seg",
                                      8,
                                      type=int)
        of_miter = self.settings.value("Qgis/digitizing/offset_miter_limit",
                                       5,
                                       type=int)

        lo1m = self.rb1.asGeometry().offsetCurve(-self.circ_rayon,
                                                 of_quad, of_join,
                                                 of_miter)
        lo1p = self.rb1.asGeometry().offsetCurve(+self.circ_rayon,
                                                 of_quad, of_join,
                                                 of_miter)
        lo2m = self.rb2.asGeometry().offsetCurve(-self.circ_rayon,
                                                 of_quad, of_join,
                                                 of_miter)
        lo2p = self.rb2.asGeometry().offsetCurve(+self.circ_rayon,
                                                 of_quad, of_join,
                                                 of_miter)

        def seg2CadPoints(line):
            p1 = CADPoint(line.asPolyline()[0][0], line.asPolyline()[0][1])
            p2 = CADPoint(line.asPolyline()[1][0], line.asPolyline()[1][1])
            return p1, p2

        lo1m1, lo1m2 = seg2CadPoints(lo1m)
        lo2m1, lo2m2 = seg2CadPoints(lo2m)
        lo1p1, lo1p2 = seg2CadPoints(lo1p)
        lo2p1, lo2p2 = seg2CadPoints(lo2p)

        self.p1 = CADLine(lo1m1, lo1m2).intersection(CADLine(lo2m1, lo2m2))
        self.p2 = CADLine(lo1m1, lo1m2).intersection(CADLine(lo2p1, lo2p2))
        self.p3 = CADLine(lo1p1, lo1p2).intersection(CADLine(lo2m1, lo2m2))
        self.p4 = CADLine(lo1p1, lo1p2).intersection(CADLine(lo2p1, lo2p2))

        points = [self.p1, self.p2, self.p3, self.p4]
        self.p1, self.p2, self.p3, self.p4 = (QgsPoint(p.x, p.y)
                                              for p in points)

        self.rb_points = myRubberPointSnap(self.canvas)
        self.rb_points.setToGeometry(QgsGeometry.fromMultiPoint(
                    [self.p1, self.p2, self.p3, self.p4]), None)

        self.canvas.refresh

    def finishedRadius(self):
        self.getPossibleCenter()
        self.setval = True

    def initGui(self):
        self.dialog = Ui_CADDigitizeDialogRadius()
        self.dialog.SpinBox_Radius.valueChanged.connect(self.setRadiusValue)
        self.dialog.buttonBox.accepted.connect(self.finishedRadius)
        self.dialog.buttonBox.rejected.connect(self.clear)

    def keyReleaseEvent(self,  event):
        if event.key() == Qt.Key_Escape:
            self.clear()
            return

    def cadCanvasReleaseEvent(self, event):
        layer = self.canvas.currentLayer()

        flag = False

        if self.nbPoints == 2:
            flag = True

        seg = self.cadDock.snappedSegment()
        if len(seg):
            flag = True
            self.point1 = seg[0]
            self.point2 = seg[1]

        if self.nbPoints == 0 and flag:
            self.setval = False

            self.p11 = (self.point1)
            self.p12 = (self.point2)

            self.rb1 = myRubberDigit(self.canvas)
            self.rb1.setToGeometry(QgsGeometry.fromPolyline(seg), None)

        if self.nbPoints == 1 and flag:
            self.p21 = (self.point1)
            self.p22 = (self.point2)

            p_inter = CADLine(self.p11, self.p12).intersection(
                    CADLine(self.p21, self.p22))

            if p_inter is None:
                iface.messageBar().pushMessage(tr(u"Error"),
                                               tr(u"Segments are parallels"),
                                               level=QgsMessageBar.CRITICAL)
                flag = False
            else:
                self.cad_p1.setX(p_inter.x)
                self.cad_p1.setY(p_inter.y)

                self.rb2 = myRubberDigit(self.canvas)
                self.rb2.setToGeometry(QgsGeometry.fromPolyline(seg), None)

                self.rb = myRubberDigit(self.canvas)

                self.dialog.show()

        if self.nbPoints == 2:
            segments = self.getSegments()

            geom = CADCircle.byCenterRadius(self.cad_p1, self.circ_rayon)
            self.returnGeometry(geom, tr(u"Circle by 2 tangents"))
            self.clear()

            return

        if self.nbPoints < 2 and flag:
            self.nbPoints += 1
        if self.rb:
            return

    def cadCanvasMoveEvent(self, event):
        if self.nbPoints < 2:
            if self.rbSegment is None:
                self.rbSegment = myRubberSegmentSnap(self.canvas)

            (f, point1, point2, retRes) = snappedPoint(self.canvas,
                                                       event,
                                                       True,
                                                       True)
            if f:
                seg = [point1, point2]
                self.rbSegment.setToGeometry(QgsGeometry.fromPolyline(seg),
                                             None)
                self.canvas.refresh()

        if (self.nbPoints >= 2 and self.setval) is True:

            segments = self.getSegments()
            list_points = [self.p1, self.p2, self.p3, self.p4]

            point = event.mapPoint()
            distance = [QgsDistanceArea().measureLine(
                        p, point) for p in list_points]

            i = distance.index(min(distance))
            self.cad_p1.setX(list_points[i].x())
            self.cad_p1.setY(list_points[i].y())

            circle = CADCircle.byCenterRadius(self.cad_p1, self.circ_rayon)
            geom = circle.exportToQgsGeometry(segments)
            if self.refresh.isChecked():
                self.shapeInfo.setText(str(circle))
            self.rb.setToGeometry(geom, None)

            self.canvas.refresh()
