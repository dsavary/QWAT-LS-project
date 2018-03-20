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

from qgis.core import (QgsPoint, QgsGeometry, QGis)
from CADUtils import *
from CADRegularPolygon import *
from CADCircle import *
from CADLine import *
from CADPoint import *
import math
import operator


class CADTriangle(object):
    def __init__(self, p1, p2, p3):
        if not all(isinstance(p, (CADPoint, QgsPoint)) for p in [p1, p2, p3]):
                raise AttributeError
        else:
            self.__points = [CADPoint(p1), CADPoint(p2), CADPoint(p3)]
            self.__update()

    def __update(self):
        self.__A = self.__points[0]
        self.__B = self.__points[1]
        self.__C = self.__points[2]
        self.__updateAngles()
        self.__updateSides()
        self.__updateLengths()
        self.__updateCenter()
        self.__updateArea()

    def __updateAngles(self):
        self.__angles = []
        for i in range(0, 3):
            self.__angles.append(
                self.__points[i % 3].getAngleOfLineBetweenTwoPoints(
                                                     self.__points[(i+1) % 3]))

    def __updateSides(self):
        self.__sides = [CADLine(self.__A, self.__B),
                        CADLine(self.__B, self.__C),
                        CADLine(self.__C, self.__A)]

    def __updateLengths(self):
        # A = points[0]
        # B = points[1]
        # C = points[2]
        # a (lengths[0]) = [BC]
        # b (lengths[1]) = [AC]
        # c (lengths[2]) = [AB]
        self.__a = self.__B.distance(self.__C)
        self.__b = self.__A.distance(self.__C)
        self.__c = self.__A.distance(self.__B)
        self.__lengths = [self.__a, self.__b, self.__c]
        self.__updatePerimeter()

    def __updatePerimeter(self):
        self._perimeter = reduce(operator.add, self.__lengths)

    def __updateArea(self):
        # area = abs((Ax(By-Cy)+Bx(Cy-Ay)+Cx(Ay-By))/2)
        Ax = self.__A.x
        Ay = self.__A.y
        Bx = self.__B.x
        By = self.__B.y
        Cx = self.__C.x
        Cy = self.__C.y
        self._area = math.fabs((Ax * (By - Cy) +
                                Bx * (Cy - Ay) +
                                Cx * (Ay - By)) / 2)

    def __updateCenter(self):
        self.__center = QgsPoint()
        self.__center.setX((self.__A.x +
                            self.__B.x +
                            self.__C.x)/3)
        self.__center.setY((self.__A.x +
                            self.__B.x +
                            self.__C.x)/3)

    @property
    def area(self):
        return self._area

    @property
    def perimeter(self):
        return self._perimeter

    @property
    # Adapted from SymPy
    def altitudes(self):
        """The altitudes of the triangle.

        An altitude of a triangle is a segment through a vertex,
        perpendicular to the opposite side, with length being the
        height of the vertex measured from the line containing the side.
        """
        s = self.__sides
        v = self.__points
        return {v[0]: s[1].perpendicular_segment(v[0]),
                v[1]: s[2].perpendicular_segment(v[1]),
                v[2]: s[0].perpendicular_segment(v[2])}

    @property
    # Adapted from SymPy
    def orthocenter(self):
        """The orthocenter of the triangle.

        The orthocenter is the intersection of the altitudes of a triangle.
        It may lie inside, outside or on the triangle.
        """
        a = self.altitudes
        v = self.__points
        l1 = a[v[0]]
        l2 = a[v[1]]
        return CADLine(l1.p1, l1.p2).intersection(CADLine(l2.p1, l2.p2))

    # Adapted from SymPy
    def bisectors(self):
        """The angle bisectors of the triangle.

        An angle bisector of a triangle is a straight line through a vertex
        which cuts the corresponding angle in half.
        """
        s = self.__sides
        v = self.__points
        c = self.incenter
        l1 = Segment(v[0], Line(v[0], c).intersection(s[1])[0])
        l2 = Segment(v[1], Line(v[1], c).intersection(s[2])[0])
        l3 = Segment(v[2], Line(v[2], c).intersection(s[0])[0])
        return {v[0]: l1, v[1]: l2, v[2]: l3}

    @property
    # Adapted from SymPy
    def medians(self):
        """The medians of the triangle.

        A median of a triangle is a straight line through a vertex and the
        midpoint of the opposite side, and divides the triangle into two
        equal areas.
        """
        s = self.__sides
        v = self.__points
        return {v[0]: Segment(v[0], s[1].midpoint),
                v[1]: Segment(v[1], s[2].midpoint),
                v[2]: Segment(v[2], s[0].midpoint)}

    @property
    # Adapted from SymPy
    def medial(self):
        """The medial triangle of the triangle.

        The triangle which is formed from the midpoints of the three sides.
        """
        s = self.__sides
        return CADTriangle(s[0].midpoint, s[1].midpoint, s[2].midpoint)

    @property
    def circumcenter(self):
        Ax = self.__A.x
        Ay = self.__A.x
        Bx = self.__B.x
        By = self.__B.x
        Cx = self.__C.x
        Cy = self.__C.x
        D = 2 * (Ax * (By - Cy) + Bx * (Cy - Ay) + Cx * (Ay - By))
        x = ((Ax * Ax + Ay * Ay) * (By - Cy) +
             (Bx * Bx + By * By) * (Cy - Ay) +
             (Cx * Cx + Cy * Cy) * (Ay - By)) / D
        y = ((Ax * Ax + Ay * Ay) * (Cx - Bx) +
             (Bx * Bx + By * By) * (Ax - Cx) +
             (Cx * Cx + Cy * Cy) * (Bx - Ax)) / D
        return CADPoint(x, y)

    @property
    def circumradius(self):
        radius = (reduce(operator.mul, self.__lengths) /
                  math.sqrt((self.__a + self.__b + self.__c) *
                            (self.__b + self.__c - self.__a) *
                            (self.__c + self.__a - self.__b) *
                            (self.__a + self.__b - self.__c)))
        return radius

    @property
    # Adapted from SymPy
    def cicumscribedCircle(self):
        return CADCircle(self.circumcenter, self.circumradius)

    @property
    # Adapted from SymPy
    def incenter(self):
        x = (self.__a * self.__A.x +
             self.__b * self.__B.x +
             self.__c * self.__C.x) / self._perimeter
        y = (self.__a * self.__A.x +
             self.__b * self.__B.x +
             self.__c * self.__C.x) / self._perimeter
        return CADPoint(x, y)

    @property
    # Adapted from SymPy
    def inradius(self):
        return (2 * self._area) / self._perimeter

    @property
    # Adapted from SymPy
    def inscribedCircle(self):
        return CADCircle(self.incenter, self.inradius)

    def isIsocele(self, lengthTolerance=0.0001):
        """Are two or more of the sides the same length?
        """
        l0l1 = near(self.__lengths[0],
                    self.__lengths[1],
                    lengthTolerance)
        l1l2 = near(self.__lengths[1],
                    self.__lengths[2],
                    lengthTolerance)
        l2l0 = near(self.__lengths[2],
                    self.__lengths[0],
                    lengthTolerance)

        if l0l1 is True or l1l2 is True or l2l0 is True:
            return True

        return False

    def isEquilateral(self, lengthTolerance=0.0001, angleTolerance=0.001):
        """Are all the sides the same length?
        """
        l0l1 = near(self.__lengths[0],
                    self.__lengths[1],
                    lengthTolerance)
        l1l2 = near(self.__lengths[1],
                    self.__lengths[2],
                    lengthTolerance)
        l2l0 = near(self.__lengths[2],
                    self.__lengths[0],
                    lengthTolerance)

        if l0l1 is True and l1l2 is True and l2l0 is True:
            l0l1 = near(self.__angles[0],
                        self.__angles[1],
                        angleTolerance)
            l1l2 = near(self.__angles[1],
                        self.__angles[2],
                        angleTolerance)
            l2l0 = near(self.__angles[2],
                        self.__angles[0],
                        angleTolerance)
            if a0a1 is True and a1a2 is True and a2a0 is True:
                return True

        return False

    def isRight(self, angleTolerance=0.001):
        """Is the triangle right-angled.
        """
        for i in range(0, 3):
            if near(self.__angles[i], 90.0, angleTolerance):
                return True

        return False

    # Adapted from SymPy
    def isScalene(self):
        """Are all the sides of the triangle of different lengths?
        """
        return len(set(self.__lengths)) == 3

    @classmethod
    def fromQgsGeometry(cls, geom):
        tri = None
        if not isinstance(geom, QgsGeometry):
            raise AttributeError
        try:
            if geom.type() == QGis.Polygon:
                g = geom.toPolygon()
                if len(g) != 4 and isCollinear(g[0], g[1], g[2]) == 0:
                    raise ValueError
                else:
                    tri = g[:3]

            elif geom.type() == QGis.Polyline:
                g = geom.toPolyline()
                if len(g) != 3 and isCollinear(g[0], g[1], g[2]) == 0:
                    raise ValueError
                else:
                    tri = g[:]
        except:
            raise ValueError

        if tri:
            return cls(tri[0], tri[1], tri[2])

        return None

    @classmethod
    def fromCADRegularPolygon(self, rp):
        if not isinstance(rp, CADRegularPolygon) or rp.nbEdges != 3:
            raise AttributeError
        try:
            points = [p for p in rp]
            if len(points) != 3:
                raise ValueError
            else:
                return cls(points[0], points[1], points[2])
        except:
            raise ValueError

        return None

    def exportToQgsGeometry(self):
        return QgsGeometry.fromPolygon([self.__points])

    def exportToCADRegularPolygon(self):
        if self.isEquilateral():
            return CADRegularPolygon(self.__center, self.__points[0])
        else:
            raise ValueError
