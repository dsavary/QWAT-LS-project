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

from CADOptionsToolbar.CADOptionsArc import CADOptionsToolbar_Arc
from ..CADShape.CADCircularArc import *
from ..CADShape.CADPoint import CADPoint
from ..CADDigitize_dialog import Ui_CADDigitizeDialogAngle
from rubber import *
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from qgis.gui import *
from qgis.utils import iface
import math
from ..CADDigitize_tr import tr


class ArcTool(QgsMapToolCapture):
    cadTool = pyqtSignal(QgsGeometry, str)

    def __init__(self, canvas, dock, captureMode):
        super(ArcTool, self).__init__(canvas, dock, captureMode)
        self.settings = QSettings()

    def clear(self):
        self.shapeInfo.clear()
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

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.optionsToolbar = CADOptionsToolbar_Arc(self.currentVectorLayer())
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
                self.exportToQgsGeometry(CADgeom)), command)
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

    def exportToQgsGeometry(self, geom):
        arc_method = self.getMethod()
        interValue = -1
        if arc_method == "pitch":
            interValue = self.getPitch()
        else:
            interValue = self.getAngle()

        vLayer = self.currentVectorLayer()
        if vLayer.geometryType() == QGis.Polygon:
            polygArc = self.getPolygonArcType()
            return geom.exportToQgsGeometryPolygone(arc_method,
                                                    interValue,
                                                    polygArc)
        else:
            return geom.exportToQgsGeometryPolyline(arc_method,
                                                    interValue)
        return None

    def getMethod(self):
        return self.settings.value("/CADDigitize/arc/method", "pitch")

    def getPitch(self):
        return self.settings.value("/CADDigitize/arc/pitch", 2, type=float)

    def getAngle(self):
        return self.settings.value("/CADDigitize/arc/angle", 1, type=int)

    def getPolygonArcType(self):
        return self.settings.value("/CADDigitize/arc/polygon", "pie")

    def getDirection(self, retInt=False):
        directionStr = self.settings.value("/CADDigitize/arc/direction",
                                           "ClockWise")
        if retInt:
            if directionStr == "CounterClockWise":
                return -1
            else:
                return 1

        return directionStr


class ArcBy3PointsTool(ArcTool):
    def __init__(self, canvas, dock, captureMode):
        super(ArcBy3PointsTool, self).__init__(canvas, dock, captureMode)
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
            geom = CADCircularArc.by3Points(self.p1,
                                            self.p3,
                                            self.p2)

            if geom is not None:
                self.returnGeometry(geom,
                                    tr(u"Arc by 3 points"))

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

            geom = CADCircularArc.by3Points(self.p1,
                                            point,
                                            self.p2)
            if geom is not None:
                self.rb.setToGeometry(self.exportToQgsGeometry(
                                       geom), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))


class ArcByCenter2PointsTool(ArcTool):
    def __init__(self, canvas, dock, captureMode):
        super(ArcByCenter2PointsTool, self).__init__(canvas, dock, captureMode)
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
            direction = self.getDirection(True)
            geom = CADCircularArc.byCenter2Points(self.p1,
                                                  self.p2,
                                                  self.p3, direction)

            if geom is not None:
                self.returnGeometry(geom,
                                    tr(u"Arc by center and 2 points"))

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

            direction = self.getDirection(True)
            geom = CADCircularArc.byCenter2Points(self.p1,
                                                  self.p2,
                                                  point, direction)
            if geom is not None:
                self.rb.setToGeometry(self.exportToQgsGeometry(
                                       geom), None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))


class ArcByCenterPointAngleTool(ArcTool):
    def __init__(self, canvas, dock, captureMode):
        super(ArcByCenterPointAngleTool, self).__init__(canvas,
                                                        dock, captureMode)
        self.cadDock = dock
        self.cadDock.enable()
        self.canvas = canvas
        self.rb, self.rbPoint = None, None
        self.dialog = None
        self.angle = 45
        self.clear()

    def clear(self):
        self.nbPoints = 0
        self.angle = 0
        if self.rb:
            self.rb.reset(True)
            self.rb = None
        if self.rbPoint:
            self.rbPoint.reset(True)
            self.rbPoint = None

        self.p1, self.p2, self.p3 = None, None, None
        if self.dialog:
            self.dialog.close()
        self.canvas.refresh()

    def setAngleValue(self):
        self.angle = (360 - self.dialog.SpinBox_Angle.value()) % 360
        direction = self.getDirection(True)
        geom = CADCircularArc.byCenterPointAngle(self.p1,
                                                 self.p2,
                                                 self.angle,
                                                 direction)
        self.rb.setToGeometry(self.exportToQgsGeometry(geom), None)

    def finishedAngle(self):
        direction = self.getDirection(True)
        self.angle = (360 - self.dialog.SpinBox_Angle.value()) % 360
        direction = self.getDirection(True)
        geom = CADCircularArc.byCenterPointAngle(self.p1,
                                                 self.p2,
                                                 self.angle,
                                                 direction)
        self.clear()
        self.returnGeometry(geom,
                            tr(u"Arc by center, point and angle"))

    def initGui(self):
        self.dialog = Ui_CADDigitizeDialogAngle()
        self.dialog.SpinBox_Angle.valueChanged.connect(self.setAngleValue)
        self.dialog.buttonBox.accepted.connect(self.finishedAngle)
        self.dialog.buttonBox.rejected.connect(self.clear)
        self.dialog.show()

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
            self.initGui()
        else:
            self.p3 = QgsPoint(pointMap[0])

        self.nbPoints += 1

        if self.nbPoints == 3:
            a1 = CADPoint(self.p1).getAngleOfLineBetweenTwoPoints(self.p2)
            a2 = CADPoint(self.p1).getAngleOfLineBetweenTwoPoints(self.p3)
            self.angle = a2-a1
            self.dialog.SpinBox_Angle.setValue(360 - (self.angle % 360))
            direction = self.getDirection(True)
            geom = CADCircularArc.byCenterPointAngle(self.p1,
                                                     self.p2,
                                                     self.angle,
                                                     direction)

            if geom is not None:
                self.returnGeometry(geom,
                                    tr(u"Arc by center, point and angle"))

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

        if self.nbPoints == 2 and \
                CADPoint.isCollinear(self.p1, self.p2, point) != 0:
            a1 = CADPoint(self.p1).getAngleOfLineBetweenTwoPoints(self.p2)
            a2 = CADPoint(self.p1).getAngleOfLineBetweenTwoPoints(point)
            self.angle = a2-a1
            self.dialog.SpinBox_Angle.setValue(360 - (self.angle % 360))

            direction = self.getDirection(True)
            geom = CADCircularArc.byCenterPointAngle(self.p1,
                                                     self.p2,
                                                     self.angle,
                                                     direction)
            if geom is not None:
                self.rb.setToGeometry(self.exportToQgsGeometry(geom),
                                      None)
                if self.refresh.isChecked():
                    self.shapeInfo.setText(str(geom))
