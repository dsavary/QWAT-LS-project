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


from PyQt4.QtCore import QSettings, QCoreApplication
from PyQt4.QtGui import QApplication

from qgis.core import QgsPoint
from qgis.utils import iface
from ..CADDigitize_tr import tr

from ..CADShape.CADCircle import *
from ..CADShape.CADCircularArc import *
from ..CADShape.CADEllipse import *
from ..CADShape.CADRectangle import *
from ..CADShape.CADRegularPolygon import *


def arc_settings():
    layer = iface.activeLayer()
    arc_method = QSettings().value("/CADDigitize/arc/method",  "pitch")
    if arc_method == "pitch":
        interValue = QSettings().value("/CADDigitize/arc/pitch", 2, type=float)
    else:
        interValue = QSettings().value("/CADDigitize/arc/angle", 1, type=int)
    arc_clock = QSettings().value("/CADDigitize/arc/direction",  "ClockWise")

    arc_polygon = None
    if layer.geometryType() == 2:
        arc_polygon = QSettings().value("/CADDigitize/arc/polygon",
                                        "chord")

    return arc_method, interValue, arc_clock, arc_polygon


def arc_geom(arc):
    settings = arc_settings()
    geom = None
    if settings[3] is None:  # Polyline
        try:
            geom = arc.exportToQgsGeometryPolyline(settings[0],
                                                   settings[1])
        except:
            pass
    else:
        try:
            geom = arc.exportToQgsGeometryPolygone(settings[0],
                                                   settings[1],
                                                   settings[2])
        except:
            pass

    return geom


def circle_settings():
    return QSettings().value("/CADDigitize/circle/segments", 36, type=int)


def ellipse_settings():
    return QSettings().value("/CADDigitize/ellipse/segments", 36, type=int)


def rpolygon_settings():
    return QSettings().value("/CADDigitize/rpolygon/nbedges", 5, type=int)


def listToPoint(pList):
    if len(pList) != 2:
        return None
    else:
        return QgsPoint(pList[0], pList[1])

P = listToPoint


class ND_functions:
    @staticmethod
    def f_getCircleBy2Points(list_args):
        geom = None
        try:
            circle = CADCircle.by2Points(P(list_args[0]),
                                         P(list_args[1]))
            geom = circle.exportToQgsGeometry(circle_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getCircleBy3Points(list_args):
        geom = None
        try:
            circle = CADCircle.by3Points(P(list_args[0]),
                                         P(list_args[1]),
                                         P(list_args[2]))
            geom = circle.exportToQgsGeometry(circle_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getCircleByCenterRadius(list_args):
        geom = None
        try:
            circle = CADCircle.byCenterRadius(P(list_args[0]),
                                              list_args[1])
            geom = circle.exportToQgsGeometry(circle_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getCircleByCenterPoint(list_args):
        geom = None
        try:
            circle = CADCircle.byCenterPoint(P(list_args[0]),
                                             P(list_args[1]))
            geom = circle.exportToQgsGeometry(circle_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getSquareFromCenter(list_args):
        geom = None
        try:
            rect = CADRectangle.squareFromCenter(P(list_args[0]),
                                                 P(list_args[1]))
            geom = rect.exportToQgsGeometry()
        except:
            pass

        return geom

    @staticmethod
    def f_getRectFromCenter(list_args):
        geom = None
        try:
            rect = CADRectangle.fromCenter(P(list_args[0]),
                                           P(list_args[1]))
            geom = rect.exportToQgsGeometry()
        except:
            pass

        return geom

    @staticmethod
    def f_getRectByExtent(list_args):
        geom = None
        try:
            rect = CADRectangle.byExtent(P(list_args[0]),
                                         P(list_args[1]))
            geom = rect.exportToQgsGeometry()
        except:
            pass

        return geom

    @staticmethod
    def f_getRectBy3Points(list_args):
        geom = None
        try:
            rect = CADRectangle.by3Points(P(list_args[0]),
                                          P(list_args[1]),
                                          P(list_args[2]))
            geom = rect.exportToQgsGeometry()
        except:
            pass

        return geom

    @staticmethod
    def f_getEllipseByCenterAnd2Points(list_args):
        geom = None
        try:
            ellipse = CADEllipse.byCenter2Points(P(list_args[0]),
                                                 P(list_args[1]),
                                                 P(list_args[2]))
            geom = ellipse.exportToQgsGeometry(ellipse_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getEllipseFromCenter(list_args):
        geom = None
        try:
            ellipse = CADEllipse.byCenterPoint(P(list_args[0]),
                                               P(list_args[1]))
            geom = ellipse.exportToQgsGeometry(ellipse_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getEllipseByExtent(list_args):
        geom = None
        try:
            ellipse = CADEllipse.byExtent(P(list_args[0]),
                                          P(list_args[1]))
            geom = ellipse.exportToQgsGeometry(ellipse_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getEllipseFromFoci(list_args):
        geom = None
        try:
            ellipse = CADEllipse.fromFoci(P(list_args[0]),
                                          P(list_args[1]),
                                          P(list_args[2]))
            geom = ellipse.exportToQgsGeometry(ellipse_settings())
        except:
            pass

        return geom

    @staticmethod
    def f_getArcBy3Points(list_args):
        geom = None
        try:
            arc = CADCircularArc.by3Points(P(list_args[0]),
                                           P(list_args[1]),
                                           P(list_args[2]))
            geom = arc_geom(arc)
        except:
            pass

        return geom

    @staticmethod
    def f_getArcByCenter2Points(list_args):
        geom = None
        try:
            arc = CADCircularArc.byCenter2Points(P(list_args[0]),
                                                 P(list_args[1]),
                                                 P(list_args[2]))
            geom = arc_geom(arc)
        except:
            pass

        return geom

    @staticmethod
    def f_getArcByCenterPointAngle(list_args):
        geom = None
        try:
            arc = CADCircularArc.byCenterPointAngle(P(list_args[0]),
                                                    P(list_args[1]),
                                                    P(list_args[2]))
            geom = arc_geom(arc)
        except:
            pass

        return geom

    @staticmethod
    def f_getRPolygon2Corners(list_args):
        geom = None
        try:
            rpolygon = CADRegularPolygon.by2Corners(P(list_args[0]),
                                                    P(list_args[1]))
            geom = rpolygon.exportToQgsGeometry()
        except:
            pass

        return geom

    @staticmethod
    def f_getRPolygonCenterCorner(list_args):
        geom = None
        try:
            rpolygon = CADRegularPolygon.byCenterAndCorner(P(list_args[0]),
                                                           P(list_args[1]))
            geom = rpolygon.exportToQgsGeometry()
        except:
            pass

        return geom


CADDigitize_ND_functions = [
        # Circle
        [tr(u"Circle by 2 points"),
         ND_functions.f_getCircleBy2Points],
        [tr(u"Circle by 3 points"),
         ND_functions.f_getCircleBy3Points],
        [tr(u"Circle by center and a point"),
         ND_functions.f_getCircleByCenterPoint],
        [tr(u"Circle by center and radius"),
         ND_functions.f_getCircleByCenterRadius],
        # Rectangle
        [tr(u"Rectangle by 3 points"),
         ND_functions.f_getRectBy3Points],
        [tr(u"Rectangle by extent"),
         ND_functions.f_getRectByExtent],
        [tr(u"Rectangle from center"),
         ND_functions.f_getRectFromCenter],
        [tr(u"Square from center"),
         ND_functions.f_getSquareFromCenter],
        # Ellipse
        [tr(u"Ellipse by center and 2 points"),
         ND_functions.f_getEllipseByCenterAnd2Points],
        [tr(u"Ellipse by extent"),
         ND_functions.f_getEllipseByExtent],
        [tr(u"Ellipse by foci and a point"),
         ND_functions.f_getEllipseFromFoci],
        [tr(u"Ellipse from center"),
         ND_functions.f_getEllipseFromCenter],
        # Arc
        [tr(u"Arc by 3 points"),
         ND_functions.f_getArcBy3Points],
        [tr(u"Arc by center and 2 points"),
         ND_functions.f_getArcByCenter2Points],
        [tr(u"Arc by center, point and angle"),
         ND_functions.f_getArcByCenterPointAngle],
        # Regular polygon
        [tr(u"Regular polygon by 2 corners"),
         ND_functions.f_getRPolygon2Corners],
        [tr(u"Regular polygon by center and point"),
         ND_functions.f_getRPolygonCenterCorner]
        ]


CADDigitize_ND_functions_points = [
        # [Point, Point, Point, "Option"]
        # Circle
        [True, True, False, False],
        [True, True, True, False],
        [True, True, False, False],
        [True, False, False, "double"],
        # Rectangle
        [True, True, True, False],
        [True, True, False, False],
        [True, True, False, False],
        [True, True, False, False],
        # Ellipse
        [True, True, True, False],
        [True, True, False, False],
        [True, True, True, False],
        [True, True, False, False],
        # Arc
        [True, True, True, False],
        [True, True, True, False],
        [True, True, False, "angle"],
        # Regular polygon
        [True, True, False, False],
        [True, True, False, False]
        ]
