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

from CADOptionsToolbar.CADOptionsModify import *
from ..CADShape.CADCircle import *
from ..CADShape.CADPoint import *
from ..CADShape.CADLine import *
from ..CADDigitize_dialog import Ui_CADDigitizeDialogRadius
from ..CADDigitize_feature import CRSTransform
from snap import *
from rubber import *
from PyQt4.QtCore import *
from PyQt4.QtGui import *
from qgis.core import *
from qgis.gui import *
from qgis.utils import iface
import math
from ..CADDigitize_tr import tr


class ModifyTool(QgsMapToolCapture):
    cadTool = pyqtSignal(QgsGeometry, str)

    def __init__(self, canvas, dock, captureMode):
        super(ModifyTool, self).__init__(canvas, dock, captureMode)
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

    def getSegments(self):
        return QSettings().value("/CADDigitize/circle/segments", 36, type=int)

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
            self.cadTool.emit(self.topologicalGeom(CADgeom), command)
        else:
            self.cadTool.emit(QgsGeometry(), "")

        self.textBrowser.append("*"*10)
        self.textBrowser.append(
            tr(u"At: " + QDateTime.currentDateTime().toString(Qt.LocaleDate),
               "Space before date and time"))
        self.textBrowser.append(tr(u"Modify:"))

    def addCadPointsVector(self, vLayer, point, line1, line2):
        "Point?crs=epsg:4326&field=id:integer&field=name:string(20)&index=yes"
        vl = "Point?crs="+vLayer.crs().authid()
        vl += "&field=X:double&field=Y:double"
        vl += "&field=l1x1:double&field=l1y1:double"
        vl += "&field=l1x2:double&field=l1y2:double"
        vl += "&field=l2x1:double&field=l2y1:double"
        vl += "&field=l2x2:double&field=l2y2:double"
        vl += "&index=yes"
        mem_layer = QgsVectorLayer(vl, "CADPoints", "memory")
        pr = mem_layer.dataProvider()

        fet = QgsFeature()
        fet.setGeometry(QgsGeometry.fromPoint(point))
        fet.setAttributes([point.x(), point.y()] +
                          [p for p in line1.pointsXY] +
                          [p for p in line2.pointsXY])
        pr.addFeatures([fet])
        mem_layer.commitChanges()
        mem_layer.updateExtents()
        QgsMapLayerRegistry.instance().addMapLayer(mem_layer)

    def isZoomTool(self):
        return False

    def isTransient(self):
        return False

    def isEditTool(self):
        return True


class ModifySimpleExtentTool(ModifyTool):
    def __init__(self, canvas, dock, captureMode):
        super(ModifySimpleExtentTool, self).__init__(
            canvas, dock, captureMode)
        self.clear()

    def clear(self):
        self.nbPoints = 0
        self.l1, self.l2 = None, None
        self.canvas.refresh()
        try:
            self.rb1.reset()
        except:
            pass
        try:
            self.rb2.reset()
        except:
            pass

    def cadCanvasReleaseEvent(self, event):
        layer = self.canvas.currentLayer()

        flag = False

        (f,
         (self.point1, p1Nr),
         (self.point2, p2Nr),
         retRes) = snappedPoint(self.canvas, event, True, True, True)

        if f and flag is False:
            flag = True
            if self.nbPoints == 1:
                # Only for the layer where tool was activated
                flag = bool(retRes.layer == self.layerActivated)
                if flag is False:
                    iface.messageBar().pushMessage(
                        tr(u"Warning"),
                        tr(u"Selected segment is not for this layer"),
                        level=QgsMessageBar.WARNING)

        if self.nbPoints == 0 and flag:
            self.l1 = CADLine(self.point1, self.point2)

            self.rb1.setToGeometry(QgsGeometry.fromPolyline([self.point1,
                                                             self.point2]),
                                   None)

        if self.nbPoints == 1 and flag:
            self.l2 = CADLine(self.point1, self.point2)

            pt_inter = self.l1.intersection(self.l2)

            if pt_inter is None or \
               pt_inter not in self.l1 or \
               pt_inter in self.l2:
                iface.messageBar().pushMessage(
                    tr(u"Error"),
                    tr(u"Can't create simple extend entity"),
                    level=QgsMessageBar.CRITICAL)
                flag = False
            else:
                chk = self.optionsToolbar.optionsToolBar.findChildren(
                        QRadioButton)
                # No checked
                if all(chk) is False:
                    chk[0].setChecked(True)

                if chk[0].isChecked():
                    le = self.l2.extended(pt_inter)
                    self.returnGeometry(le.exportToQgsGeometry(),
                                        tr(u"Add an extented segment"))
                if chk[1].isChecked():
                    seg = [self.point1, self.point2]
                    dist = [pt_inter.distance(p) for p in seg]
                    index = dist.index(min(dist))
                    if index == 0:
                        vertex = p1Nr
                    else:
                        vertex = p2Nr

                    geom = QgsGeometry.fromPoint(pt_inter.toQgsPoint())
                    CRSTransform(self.canvas, geom)
                    point = CADPoint(geom.asPoint())
                    layer.beginEditCommand(tr(u"Trim modify"))
                    retRes.layer.moveVertex(
                        point.x, point.y,
                        retRes.snappedAtGeometry,
                        vertex)
                    layer.endEditCommand()
                if chk[2].isChecked():
                    le = self.l2.extension(pt_inter)
                    self.returnGeometry(le.exportToQgsGeometry(),
                                        tr(u"Add an extension"))

                self.clear()
                return

        if self.nbPoints < 2 and flag:
            self.nbPoints += 1

    def cadCanvasMoveEvent(self, event):
        (f, point1, point2, retRes) = snappedPoint(self.canvas,
                                                   event,
                                                   True,
                                                   True)
        if self.nbPoints == 0:
            try:
                self.rb1.reset()
            except:
                self.rb1 = myRubberSegmentSnap(self.canvas)
                self.rb2 = myRubberSegmentSnap(self.canvas)

            if f:
                self.rb1.setToGeometry(QgsGeometry.fromPolyline([point1,
                                                                 point2]),
                                       None)

        if self.nbPoints >= 1:
            self.rb2.reset()
            self.canvas.setCursor(CADCursor)
            if [point1, point2] == [self.point1, self.point2]:
                f = False
            # Only for the layer where tool was activated
            if f and retRes.layer == self.layerActivated:
                pt_inter = self.l1.intersection(CADLine(point1, point2))
                # False if pt_inter is in segment (wants extend not trim)
                if pt_inter is None or \
                   pt_inter not in self.l1 or \
                   pt_inter in CADLine(point1, point2):
                    self.canvas.setCursor(Qt.ForbiddenCursor)

                else:
                    l = [point1, point2]
                    d = [pt_inter.distance(p) for p in l]
                    if None not in d:
                        point = l[d.index(max(d))]
                        pi = QgsPoint(pt_inter.x, pt_inter.y)
                        self.rb2.setToGeometry(QgsGeometry.fromPolyline(
                                                                    [point,
                                                                     pi]),
                                               None)

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.layerActivated = self.canvas.currentLayer()
        self.optionsToolbar = CADOptionsToolbar_ModifyExtend(
                                self.layerActivated.geometryType())
        self.cadDock.enable()
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

    def deactivate(self):
        self.clear()
        self.optionsToolbar.toolBarClear()
        self.cadDock.disable()


class ModifyMultipleExtentTool(ModifyTool):
    def __init__(self, canvas, dock, captureMode):
        super(ModifyMultipleExtentTool, self).__init__(
            canvas, dock, captureMode)
        self.clear(True)

    def clear(self, clearAll=False):
        self.nbPoints = 0
        self.nbClickRight = 0
        if clearAll:
            self.limits = []
            self.limitsGeom = []
        try:
            self.rb1.reset()
        except:
            pass
        try:
            self.rbC.reset()
        except:
            pass
        self.canvas.refresh()

    def cadCanvasReleaseEvent(self, event):

        layer = self.canvas.currentLayer()

        flag = False
        if event.button() == Qt.RightButton and self.nbPoints >= 1:
            self.nbClickRight += 1

        if self.nbClickRight == 2:
            self.clear(True)
            return

        elif event.button() == Qt.LeftButton:
            (f, self.point1, self.point2, retRes) = snappedPoint(self.canvas,
                                                                 event,
                                                                 True,
                                                                 True)

            if f and flag is False:
                flag = True
                if self.nbClickRight == 1:
                    # Only for the layer where tool was activated
                    flag = bool(retRes.layer == self.layerActivated)
                    if flag is False:
                        iface.messageBar().pushMessage(
                            tr(u"Warning"),
                            tr(u"Selected segment is not for this layer"),
                            level=QgsMessageBar.WARNING)

            if self.nbClickRight == 0 and flag:
                l1 = CADLine(self.point1, self.point2)

                if l1 in self.limits:
                    self.limits.remove(l1)
                else:
                    self.limits.append(l1)

                self.rb1.setToGeometry(QgsGeometry.fromMultiPolyline(
                    [l.exportToQgsPolyline() for l in self.limits]),
                                                                 None)

            if self.nbClickRight == 1 and flag:
                self.rb1.setToGeometry(QgsGeometry.fromMultiPolyline(
                    [l.exportToQgsPolyline() for l in self.limits]),
                                                                 None)
                self.canvas.refresh()

                l2 = CADLine(self.point1, self.point2)

                if l2 in self.limits:
                    f = False
                # Only for the layer where tool was activated
                if f and retRes.layer == self.layerActivated:
                    interPoints = l2.multiIntersection(self.limits)
                    self.rbC.reset()

                    snappedVertex = CADPoint(retRes.snappedVertex)

                    # missing CADLine __getitem__
                    nearestP, nearestIdx = l2.nearestPoints(snappedVertex)
                    oIdx = (nearestIdx + 1) % 2

                    pt_inter = None
                    if not all([i is None for i in interPoints]):
                        if interPoints[nearestIdx] is None:
                            pt_inter = interPoints[oIdx]
                        elif interPoints[oIdx] is None:
                            pt_inter = interPoints[nearestIdx]
                        else:
                            if l2.points[nearestIdx].distance(
                                interPoints[0]) <= l2.points[oIdx].distance(
                                    interPoints[0]):
                                pt_inter = interPoints[0]
                            else:
                                pt_inter = interPoints[1]

                    if pt_inter is None or \
                       pt_inter in l2:
                        self.canvas.setCursor(Qt.ForbiddenCursor)

                    else:
                        chk = self.optionsToolbar.optionsToolBar.findChildren(
                            QRadioButton)
                        # No checked
                        if all(chk) is False:
                            chk[0].setChecked(True)

                        if chk[0].isChecked():
                            le = l2.extended(pt_inter)
                            self.returnGeometry(
                                le.exportToQgsGeometry(),
                                tr(u"Add an extended segment (Multiple)"))

                        if chk[1].isChecked():
                            seg = [retRes.beforeVertex, retRes.afterVertex]
                            dist = [pt_inter.distance(p) for p in seg]
                            index = dist.index(min(dist))
                            if index == 0:
                                vertex = retRes.beforeVertexNr
                            else:
                                vertex = retRes.afterVertexNr

                            geom = QgsGeometry.fromPoint(pt_inter.toQgsPoint())
                            CRSTransform(self.canvas, geom)
                            point = CADPoint(geom.asPoint())
                            retRes.layer.moveVertex(
                                point.x, point.y,
                                retRes.snappedAtGeometry,
                                vertex)

                        if chk[2].isChecked():
                            le = l2.extension(pt_inter)
                            self.returnGeometry(
                                le.exportToQgsGeometry(),
                                tr(u"Add an extension (Multiple)"))

            if flag:
                self.nbPoints += 1

    def cadCanvasMoveEvent(self, event):
        (f, point1, point2, retRes) = snappedPoint(self.canvas,
                                                   event,
                                                   True,
                                                   True)
        try:
            l1 = CADLine(point1, point2)
        except:
            l1 = None

        if self.nbClickRight == 0:
            if self.nbPoints == 0:
                try:
                    self.rb1.reset()
                except:
                    self.rb1 = myRubberSegmentSnap(self.canvas)
                    self.rbC = myRubberSegmentSnap(self.canvas)

            self.rbC.reset()
            if f:

                if l1 not in self.limits:
                    self.rbC.setToGeometry(l1.exportToQgsGeometry(), None)
            self.rb1.setToGeometry(QgsGeometry.fromMultiPolyline(
                [l.exportToQgsPolyline() for l in self.limits]),
                                                         None)

        if self.nbClickRight == 1:
            self.rbC.reset()
            self.rb1.setToGeometry(QgsGeometry.fromMultiPolyline(
                [l.exportToQgsPolyline() for l in self.limits]),
                                                             None)
            self.canvas.setCursor(CADCursor)
            if l1 in self.limits:
                f = False
            # Only for the layer where tool was activated
            if f and retRes.layer == self.layerActivated:
                interPoints = l1.multiIntersection(self.limits)
                try:
                    self.rbC.reset()
                except:
                    self.rbC = myRubberSegmentSnap(self.canvas)

                snappedVertex = CADPoint(retRes.snappedVertex)

                # missing CADLine __getitem__
                nearestP, nearestIdx = l1.nearestPoints(snappedVertex)
                oIdx = (nearestIdx + 1) % 2

                pt_inter = None
                if not all([i is None for i in interPoints]):
                    if interPoints[nearestIdx] is None:
                        pt_inter = interPoints[oIdx]
                    elif interPoints[oIdx] is None:
                        pt_inter = interPoints[nearestIdx]
                    else:
                        if l1.points[nearestIdx].distance(
                            interPoints[0]) <= l1.points[oIdx].distance(
                                interPoints[0]):
                            pt_inter = interPoints[0]
                        else:
                            pt_inter = interPoints[1]
                    # False if pt_inter is in segment (wants extend not trim)
                    if pt_inter is None or \
                       pt_inter in l1:
                        self.canvas.setCursor(Qt.ForbiddenCursor)

                    else:
                        geom = l1.extended(pt_inter)
                        self.rbC.setToGeometry(geom.exportToQgsGeometry(),
                                               None)

    def keyReleaseEvent(self,  event):
        if event.key() == Qt.Key_Escape:
            self.clear(True)
            return

    def activate(self):
        self.clear(True)
        self.canvas.setCursor(CADCursor)
        self.cadDock.enable()
        self.layerActivated = self.canvas.currentLayer()
        self.optionsToolbar = CADOptionsToolbar_ModifyExtend(
                                self.layerActivated.geometryType())
        self.textBrowser = self.optionsToolbar.dock.findChild(QTextBrowser,
                                                              u"textBrowser")
        self.limits = []
        self.limitsGeom = []

    def deactivate(self):
        self.clear(True)
        self.optionsToolbar.toolBarClear()
        self.cadDock.disable()
        del self.limits
        del self.limitsGeom


class ModifyOffsetTool(ModifyTool):
    def __init__(self, canvas, dock, captureMode):
        super(ModifyOffsetTool, self).__init__(
            canvas, dock, captureMode)
        self.canvas = canvas
        self.cadDock = dock
        self.layer = None
        self.distance = 0  # distance of offset
        # Ruberbands rb1: for selected segment/Feature rb2: for the result
        self.rb1, self.rb2 = None, None
        self.rb_snap = None
        self.geomCopy = None  # copy of geom if it's a polygon
        self.nbPoints = 0
        self.side = 0
        self.geom = None  # Final geometry
        # our own fancy cursor
        self.clear()

    def getValues(self):
        # Options for offset. Using QGis defaults
        join = QSettings().value("Qgis/digitizing/offset_join_style",
                                 0, type=int)
        quad = QSettings().value("Qgis/digitizing/offset_quad_seg",
                                 8, type=int)
        endCap = QSettings().value("Qgis/digitizing/offset_join_style",
                                   0, type=int)
        miter = QSettings().value("Qgis/digitizing/offset_miter_limit",
                                  5, type=int)
        return (join, quad, endCap, miter)

    def keyReleaseEvent(self,  event):
        if event.key() == Qt.Key_Escape:    # if escape, clear all
            self.clear()
        return

    def cadCanvasReleaseEvent(self, event):
        self.layer = self.canvas.currentLayer()

        flag = False

        self.point1, self.point2 = None, None  # Points for segment
        self.feat, self.layerSnapped = None, None  # Feature and layer snapped
        retRes = None

        if self.nbPoints == 0:
            (flag, self.point1,
             self.point2, retRes) = snappedPoint(self.canvas, event,
                                                 True, True)
            self.snapped = CADPoint(retRes.snappedVertex)

        if self.nbPoints == 1:
            self.nbPoints += 1

        if flag is True:
            (self.of_join, self.of_quad,
             self.of_endCap, self.of_miter) = self.getValues()

            self.nbPoints = 1  # One point is clicked
            self.layerSnapped = retRes.layer
            self.seg = CADLine(self.point1, self.point2)
            self.feat = retRes.snappedAtGeometry

        if self.nbPoints == 1:
            # Can't change segment or feature
            self.featureChoice.setEnabled(False)
            self.segmentChoice.setEnabled(False)
            # define rb1
            self.rb1 = QgsRubberBand(self.canvas, True)
            self.rb1.setColor(QColor(0, 0, 255))
            self.rb1.setWidth(3)

            # define rb2
            self.rb2 = QgsRubberBand(self.canvas, True)
            self.rb2.setColor(QColor(0, 0, 255))
            self.rb2.setWidth(3)

            # create geom. Segment or Feature
            if self.segmentChoice.isChecked():
                self.geom = QgsGeometry.fromPolyline([self.point1,
                                                      self.point2])
            elif self.featureChoice.isChecked():
                # get the geometry of the first iterator
                fr = QgsFeatureRequest(self.feat)
                layerFr = self.layerSnapped.getFeatures(fr)
                self.geom = [l.geometry() for l in layerFr][0]
                # No complex
                if (self.geom.type() == QGis.Line and
                    self.geom.isMultipart() and
                    len(self.geom.asMultiPolyline()) > 1) or \
                   (self.geom.type() == QGis.Polygon and
                    (self.geom.isMultipart() and
                     len(self.geom.asMultiPolygon()) > 1)):
                    iface.messageBar().pushMessage(
                        tr(u"Error"),
                        tr(u"The feature can't be complex (hole, multipart)"),
                        level=QgsMessageBar.CRITICAL)
                    self.clear()
                    return
                # keep a copy if it's a polygon
                if self.geom.type() == QGis.Polygon:
                    self.geomCopy = QgsGeometry(self.geom)
                # convert to Polyline for offset tools
                self.geom = self.geom.convertToType(QGis.Line, False)
                # Proj conversion. No need for segment because it takes
                # already the coordinates of map projection
                mapRenderer = self.canvas.mapRenderer()
                projectSRSID = mapRenderer.destinationCrs().srsid()
                layerSnappedSRSID = self.layerSnapped.crs().srsid()
                self.geom.transform(QgsCoordinateTransform(layerSnappedSRSID,
                                                           projectSRSID))

            self.rb1.setToGeometry(self.geom, None)

            self.canvas.refresh()
            return

        if self.nbPoints == 2:

            if self.geomCopy:
                self.geom = self.geomCopy.buffer(
                    self.distance * self.side,
                    self.of_quad,
                    self.of_endCap,
                    self.of_join,
                    self.of_miter).convertToType(QGis.Polygon, False)
            else:
                self.geom = self.geom.offsetCurve(
                    self.distance * self.side,
                    self.of_quad,
                    self.of_join,
                    self.of_miter)

            if self.layer.geometryType() == QGis.Polygon:
                self.geom = self.geom.convertToType(QGis.Polygon, False)

            if self.geom and not self.geom.isEmpty():
                self.returnGeometry(self.geom, tr(u"Offset"))
            else:
                iface.messageBar().pushMessage(
                    tr(u"Error"),
                    tr(u"Problem at creation of offset "),
                    level=QgsMessageBar.CRITICAL)

            self.clear()
            return

    def cadCanvasMoveEvent(self, event):
        if self.rb_snap:
            self.rb_snap.reset(True)

        if self.nbPoints < 1:
            snapped, point1, point2 = snappedPoint(self.canvas, event, True)
            if snapped:
                self.rb_snap = myRubberSegmentSnap(self.canvas)
                geom = QgsGeometry().fromPolyline([point1, point2])
                self.rb_snap.setToGeometry(geom, None)
            self.canvas.refresh()

        if self.nbPoints == 1:
            # Need to snap?
            currpoint = event.mapPoint()
            self.distance = self.snapped.distance(currpoint)

            self.side = CADPoint.isCollinear(
                                         self.seg[0],
                                         self.seg[1],
                                         currpoint)

            if self.geomCopy:
                self.rb2.setToGeometry(self.geomCopy.buffer(
                    self.distance * self.side,
                    self.of_quad,
                    self.of_endCap,
                    self.of_join,
                    self.of_miter).convertToType(QGis.Line, False), None)
            else:
                self.rb2.setToGeometry(self.geom.offsetCurve(
                    self.distance * self.side,
                    self.of_quad,
                    self.of_join,
                    self.of_miter), None)
            self.canvas.refresh()

    def clear(self):
        self.layer = self.canvas.currentLayer()
        self.distance = 0
        self.geom = None
        self.nbPoints = 0
        self.side = 0
        self.point1, self.point2 = None, None
        self.feat, self.layerSnapped = None, None
        self.geomCopy = None
        if self.rb1:
            self.rb1.reset(True)
        if self.rb2:
            self.rb2.reset(True)
        if self.rb_snap:
            self.rb_snap.reset(True)
        self.rb1, self.rb2 = None, None

        self.canvas.refresh()

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.layerActivated = self.canvas.currentLayer()
        self.optionsToolbar = CADOptionsToolbar_ModifyOffset(
                                self.layerActivated.geometryType())
        # Dirty hack...
        self.refresh = self.optionsToolbar.dock.findChild(QCheckBox,
                                                          u"chk_refresh")
        self.shapeInfo = self.optionsToolbar.dock.findChild(QLabel,
                                                            u"ShapeInfo")
        self.textBrowser = self.optionsToolbar.dock.findChild(QTextBrowser,
                                                              u"textBrowser")
        self.refresh.stateChanged[int].connect(
            lambda cls: self.shapeInfo.clear())

        self.featureChoice = self.optionsToolbar.featureChoice
        self.segmentChoice = self.optionsToolbar.segmentChoice
        self.shapeInfo.clear()
        self.cadDock.enable()

    def deactivate(self):
        self.clear()
        self.optionsToolbar.toolBarClear()
        self.cadDock.disable()


class ModifySimpleTrimTool(ModifyTool):
    def __init__(self, canvas, dock, captureMode):
        super(ModifySimpleTrimTool, self).__init__(
            canvas, dock, captureMode)
        self.clear()

    def clear(self):
        self.nbPoints = 0
        self.l1, self.l2 = None, None
        self.canvas.refresh()
        try:
            self.rb1.reset()
        except:
            pass
        try:
            self.rb2.reset()
        except:
            pass

    def cadCanvasReleaseEvent(self, event):
        layer = self.canvas.currentLayer()

        flag = False

        (f, self.point1, self.point2, retRes) = snappedPoint(self.canvas,
                                                             event,
                                                             True,
                                                             True)

        if f and flag is False:
            flag = True
            if self.nbPoints == 1:
                # Only for the layer where tool was activated
                flag = bool(retRes.layer == self.layerActivated)
                if flag is False:
                    iface.messageBar().pushMessage(
                        tr(u"Warning"),
                        tr(u"Selected segment is not for this layer"),
                        level=QgsMessageBar.WARNING)

        if self.nbPoints == 0 and flag:
            self.l1 = CADLine(self.point1, self.point2)

            self.rb1.setToGeometry(QgsGeometry.fromPolyline([self.point1,
                                                             self.point2]),
                                   None)

        if self.nbPoints == 1 and flag:
            self.l2 = CADLine(self.point1, self.point2)
            nearestP = CADLine.pointOnALine(self.l2, retRes.snappedVertex)
            trim = self.l2.trim(self.l1,
                                nearestP)

            if trim is None:
                iface.messageBar().pushMessage(
                    tr(u"Error"),
                    tr(u"Can't create entity"),
                    level=QgsMessageBar.CRITICAL)
                flag = False
            else:
                chk = self.optionsToolbar.optionsToolBar.findChildren(
                        QRadioButton)
                # No checked
                if all(chk) is False:
                    chk[0].setChecked(True)

                if chk[0].isChecked():
                    self.returnGeometry(trim.exportToQgsGeometry(),
                                        tr(u"Add trimed entity"))
                if chk[1].isChecked():
                    if self.point1 in trim:
                        vertex = trim[0]
                        vertexNr = retRes.beforeVertexNr
                    else:
                        vertex = trim[1]
                        vertexNr = retRes.afterVertexNr

                    geom = QgsGeometry.fromPoint(vertex.toQgsPoint())
                    CRSTransform(self.canvas, geom)
                    point = CADPoint(geom.asPoint())
                    retRes.layer.moveVertex(
                        point.x, point.y,
                        retRes.snappedAtGeometry,
                        vertexNr)
                if chk[2].isChecked():
                    if self.point1 in trim:
                        vertex = trim[0]
                        pt = self.point2
                    else:
                        vertex = trim[1]
                        pt = self.point1
                    self.returnGeometry(
                                CADLine(pt,
                                        vertex).exportToQgsGeometry(),
                                tr(u"Add an inversed trimed entity"))

                self.clear()
                return

        if self.nbPoints < 2 and flag:
            self.nbPoints += 1

    def cadCanvasMoveEvent(self, event):
        (f, point1, point2, retRes) = snappedPoint(self.canvas,
                                                   event,
                                                   True,
                                                   True)
        if self.nbPoints == 0:
            try:
                self.rb1.reset()
            except:
                self.rb1 = myRubberSegmentSnap(self.canvas)
                self.rb2 = myRubberDigit(self.canvas)

            if f:
                self.rb1.setToGeometry(QgsGeometry.fromPolyline([point1,
                                                                 point2]),
                                       None)

        if self.nbPoints >= 1:
            self.rb2.reset()
            self.canvas.setCursor(CADCursor)
            if [point1, point2] == [self.point1, self.point2]:
                f = False
            # Only for the layer where tool was activated
            if f and retRes.layer == self.layerActivated:
                l2 = CADLine(point1, point2)
                nearestP = CADLine.pointOnALine(l2, retRes.snappedVertex)
                trim = l2.trim(self.l1, nearestP)

                if trim is None:
                    self.canvas.setCursor(Qt.ForbiddenCursor)

                else:
                    self.rb2.setToGeometry(trim.exportToQgsGeometry(), None)

    def activate(self):
        self.clear()
        self.canvas.setCursor(CADCursor)
        self.layerActivated = self.canvas.currentLayer()
        self.optionsToolbar = CADOptionsToolbar_ModifyTrim(
                                self.layerActivated.geometryType())
        self.cadDock.enable()
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

    def deactivate(self):
        self.clear()
        self.optionsToolbar.toolBarClear()
        self.cadDock.disable()


class ModifyMultipleTrimTool(ModifyTool):
    pass
