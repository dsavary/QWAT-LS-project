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

from __future__ import print_function
from __future__ import division

from qgis.core import (QgsPoint, QgsGeometry)
from CADUtils import *
from CADPoint import *
from CADLine import *
import math


class CADEllipse(object):
    def __init__(self, center, axis_a, axis_b, angle=0):
        if not isinstance(center, (QgsPoint, CADPoint)) \
            or not isinstance(axis_a,
                              (float, long, int)) \
            or not isinstance(axis_b,
                              (float, long, int)) \
            or not isinstance(angle,
                              (float, long, int)):
            raise AttributeError
        else:
            self._center = CADPoint(center)
            self._axis_a = axis_a
            self._axis_b = axis_b
            self._angle = angle

    def __iter__(self, segments=36):
        angle = math.radians(self._angle)
        for t in [(2*math.pi)/segments*i for i in range(segments)]:
            p = CADPoint(self._center.x +
                         self._axis_a*math.cos(t)*math.cos(angle) -
                         self._axis_b*math.sin(t)*math.sin(angle),

                         self._center.y +
                         self._axis_a*math.cos(t)*math.sin(angle) +
                         self._axis_b*math.sin(t)*math.cos(angle))
            yield p

    def __repr__(self):
        s = "CADEllipse({}, {}, {}, {})".format(
                                                self._center,
                                                self._axis_a,
                                                self._axis_b,
                                                self._angle)
        return s

    def __str__(self):
        s = "Ellipse:\n" + \
            "Center: %s" % (self._center) + '\n' + \
            "Axis a: %.3f" % (self._axis_a) + '\n' + \
            "Axis b: %.3f" % (self._axis_b) + '\n' + \
            "Angle: %.3f" % (self._angle) + '\n'

        return s

    def __eq__(self, other):
        if not all(isinstance(other, (QgsPoint, CADPoint))):
            raise AttributeError

        other = CADPoint(other)

        if self._center == other._center and \
           self._axis_a == other._axis_a and \
           self._axis_b == other._axis_b and \
           self._angle == other._angle:
                return True

        return False

    @property
    def center(self):
        return self._center

    @center.setter
    def center(self, pc):
        if not isinstance(pc, (QgsPoint, CADPoint)):
            raise AttributeError

        self._center = CADPoint(pc)

    @property
    def axis_a(self):
        return self._axis_a

    @axis_a.setter
    def axis_a(self, a):
        if not isinstance(a, (float, int, long)):
            raise AttributeError

        self._axis_a = a

    @property
    def axis_b(self):
        return self._axis_b

    @axis_b.setter
    def axis_b(self, b):
        if not isinstance(b, (float, int, long)):
            raise AttributeError

        self._axis_b = b

    @property
    def angle(self):
        return self._angle

    @angle.setter
    def angle(self, a):
        if not isinstance(a, (float, int, long)):
            raise AttributeError

        self._angle = a

    @classmethod
    def fromFoci(cls, f1, f2, f3):
        """Create an ellipse from foci.
            f1 and f2 are foci
            f3 is the axis_b

             /----f3----\
            /            \
            |  f1    f2  |
            \            /
             \----------/
        """
        if not isinstance(f1, (QgsPoint, CADPoint)) \
            or not isinstance(f2,
                              (QgsPoint, CADPoint)) \
            or not isinstance(f3,
                              (QgsPoint, CADPoint)):
            raise AttributeError

        f1 = CADPoint(f1)
        f2 = CADPoint(f2)
        f3 = CADPoint(f3)

        dist_f1f2 = f1.distance(f2)
        dist_f1f3 = f1.distance(f3)
        dist_f2f3 = f2.distance(f3)

        dist_tot = dist_f1f3 + dist_f2f3
        angle_exist = f1.getAngleOfLineBetweenTwoPoints(f2)
        center_f1f2 = f1.midpoint(f2)

        axis_a = dist_tot / 2.0
        axis_b = math.sqrt((dist_tot/2.0)**2.0 - (dist_f1f2/2.0)**2.0)

        return cls(center_f1f2, axis_a, axis_b, angle_exist)

    @classmethod
    def byExtent(cls, p1, p2):
        """Create an ellipse by extent

             /----------\ p2
            /            \
            |            |
            \            /
         p1  \----------/
        """
        if not isinstance(p1, (QgsPoint, CADPoint)) \
            or not isinstance(p2,
                              (QgsPoint, CADPoint)):
            raise AttributeError

        p1 = CADPoint(p1)
        p2 = CADPoint(p2)

        pc = p1.midpoint(p2)
        xOffset = (abs(p2.x - p1.x))/2.0
        yOffset = (abs(p2.y - p1.y))/2.0

        return cls(pc, xOffset, yOffset)

    @classmethod
    def byCenterPoint(cls, pc, p1):
        """Create an ellipse by this center and an extent point

             /----------\ p1
            /            \
            |     pc     |
            \            /
             \----------/
        """
        if not isinstance(pc, (QgsPoint, CADPoint)) \
            or not isinstance(p1,
                              (QgsPoint, CADPoint)):
            raise AttributeError

        pc = CADPoint(pc)
        p1 = CADPoint(p1)

        xOffset = abs(pc.x - p1.x)
        yOffset = abs(pc.y - p1.y)

        return cls(pc, xOffset, yOffset)

    @classmethod
    def byCenter2Points(cls, pc, p1, p2):
        """Create an ellipse by center and 2 points for axis.

             /----p2----\
            /            \
            |     pc     p1
            \            /
             \----------/
        """
        if not isinstance(pc, (QgsPoint, CADPoint)) \
            or not isinstance(p1,
                              (QgsPoint, CADPoint)) \
            or not isinstance(p2,
                              (QgsPoint, CADPoint)):
            raise AttributeError

        pc = CADPoint(pc)
        p1 = CADPoint(p1)
        p2 = CADPoint(p2)

        angle_exist = pc.getAngleOfLineBetweenTwoPoints(p1)

        axis_a = pc.distance(p1)

        pp = CADLine.pointOnALine(CADLine(pc, p1), p2)
        length = p2.distance(pp)
        pp2 = pc.pointProjected(length, 90 + angle_exist)
        axis_b = pc.distance(pp2)

        return cls(pc, axis_a, axis_b, angle_exist)

    def exportToQgsGeometry(self, segments=36):
        """Export CADEllipse to a QgsGeometry (Polygon)"""
        points = list(self.__iter__(segments))

        return QgsGeometry.fromPolygon([[QgsPoint(p.x, p.y) for p in points]])
