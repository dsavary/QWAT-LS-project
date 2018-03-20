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

from qgis.core import (QgsRectangle, QgsPoint, QgsGeometry)
from CADUtils import *
from CADPoint import *
import math


class CADRegularPolygon(object):
    def __init__(self, pCenter, pCorner, nbEdges=5):
        if not isinstance(pCenter, (QgsPoint, CADPoint)) \
            or not isinstance(pCorner, (QgsPoint, CADPoint)) \
            or not isinstance(nbEdges,
                              (long, int)):
            raise AttributeError
        else:
            self._center = CADPoint(pCenter)
            self._corner = CADPoint(pCorner)
            self._nbEdges = nbEdges
            self.__points = self.__updatePoints()
            # self._angle

    def __str__(self):
        s = "Regular polygon:\n" + \
            "Edges: {}".format(self._nbEdges) + '\n' + \
            "Center: {}".format(self._center) + '\n' + \
            "Corner: {}".format(self._corner) + '\n'
        return s

    def __repr__(self, precision=3):
        s = "CADRegularPolygon("
        s += "QgsPoint(%s)" % self._center
        s += ", QgsPoint(%s)" % self._corner
        s += ", %s)" % self._nbEdges

        return s

    def __eq__(self, other):
        if not isinstance(other, (QgsPoint, CADPoint)):
            raise AttributeError

        if CADPoint.pointsCompare(self._center, other._center) \
                and self._nbEdges == other._nbEdges:
            return True

        return False

    def __iter__(self):
        i = 0
        while i < self._nbEdges:
            yield self.__points[i]
            i += 1

    def __update(self):
        self.__updatePoints()
        self.__updateRadius()
        self.__updateAngle()

    def __updateAngle(self):
        self._angle = self._center.getAngleOfLineBetweenTwoPoints(
                                                     self._corner)

    def __updateRadius(self):
        self._radius = self._center.distance(self._corner)

    def __updatePoints(self):
        n = 1
        center = self._center
        corner = self._corner

        r = center.distance(corner)

        points = []
        angle_add = 2*math.pi / self._nbEdges

        angle_start = math.atan2(corner.y - center.y,
                                 corner.x - center.x)

        angle = angle_start

        while(n <= self._nbEdges):

            angle += angle_add
            if angle_add > 0.0 and angle > math.pi:
                angle -= 2*math.pi

            c2 = center.pointProjected(r, math.degrees(angle))

            points.append(c2)

            n += 1

        return points

    @property
    def nbEdges(self):
        """Return the number of sides/edges of the RegularPolygon
        """
        return self._nbEdges

    @nbEdges.setter
    def nbEdges(self, n):
        """Set the number of sides/edges of the RegularPolygon
        """
        if not isinstance(n, (int, long)):
            raise AttributeError
        self._nbEdges = n
        self.__update()

    @property
    def center(self):
        """The center of the RegularPolygon
        This is also the center of the circumscribing circle.
        """
        return self._center

    @center.setter
    def center(self, pc):
        """Set the center of the RegularPolygon
        """
        if not isinstance(pc, (QgsPoint, CADPoint)):
            raise AttributeError

        angle_exist = self._rotation
        dist_exist = self._radius
        self._center = CADPoint(pc)
        self._corner = self._center.pointProjected(dist_exist, angle_exist)
        self._update()

    @property
    def circumcenter(self):
        """
        Alias for center.
        """
        return self.center

    @property
    def corner(self):
        """Return the first corner (edge) of the RegularPolygon
        """
        return self._corner

    @corner.setter
    def corner(self, pc):
        """Set the first corner (edge) of the RegularPolygon
        """
        if not isinstance(pc, (QgsPoint, CADPoint)):
            raise AttributeError
        self._corner = CADPoint(pc)
        self.__update()

    @property
    def length(self):
        """Return the length of the sides.
        """
        return self._radius * 2 * math.sin(math.pi / self._nbEdges)

    @property
    def radius(self):
        """Radius of the RegularPolygon
        This is also the radius of the circumscribing circle.
        """
        return self._radius

    @property
    def circumradius(self):
        """
        Alias for radius.
        """
        return self.radius

    @property
    def angle(self):
        """Angle by which the RegularPolygon is rotated
        """
        return self._angle

    @property
    def apothem(self):
        """The inradius of the RegularPolygon.
        The apothem/inradius is the radius of the inscribed circle.
        """
        return self.radius * math.cos(math.pi / self._nbEdges)

    @property
    def inradius(self):
        """
        Alias for apothem.
        """
        return self.apothem

    @property
    def interior_angle(self):
        """Measure of the interior angles.
        """
        return (self._nbEdges - 2) * math.pi / self._nbEdges

    @property
    def exterior_angle(self):
        """Measure of the exterior angles.
        """
        return 2 * math.pi / self._nbEdges

    @property
    def circumcircle(self):
        """The circumcircle of the RegularPolygon.
        """
        return CADCircle(self.center, self.radius)

    @property
    def incircle(self):
        """The incircle of the RegularPolygon.
        """
        return CADCircle(self.center, self.apothem)

    @property
    def area(self):
        """Returns the area.
        """
        r, n, l = self._radius, self._nbEdges, self.length
        return r * n * l**2 / (4 * math.tan(math.pi / n))

    @classmethod
    def by2Corners(cls, p1, p2, nbEdges=5):
        """CADRegularPolygon by 2 corners (AB):
           A----B
          /      \
         /        \
         \        /
          \------/
          """
        if not isinstance(p1, (QgsPoint, CADPoint)) or \
           not isinstance(p2, (QgsPoint, CADPoint)) or \
           not isinstance(nbEdges, (long, int)):
            raise AttributeError
        else:
            p1 = CADPoint(p1)
            p2 = CADPoint(p2)
            angle_exist = p1.getAngleOfLineBetweenTwoPoints(p2)
            pm = p1.midpoint(p2)
            length = p1.distance(pm)

            angle = (180.0 - (360.0 / nbEdges)) / 2.0
            hypo = length / math.cos(math.radians(angle))
            pc = p1.pointProjected(hypo, angle_exist + angle)

            return cls(pc, p1, nbEdges)

        return None

    @classmethod
    def byCenterAndCorner(cls, p1, p2, nbEdges=5):
        """CADRegularPolygon by center C and a corner A:
           A-----
          /      \
         /    C   \
         \        /
          \------/
          """
        if not isinstance(p1, (QgsPoint, CADPoint)) or \
           not isinstance(p2, (QgsPoint, CADPoint)) or \
           not isinstance(nbEdges, (long, int)):
            raise AttributeError
        else:
            return cls(p1, p2, nbEdges)

        return None

    def exportToQgsGeometry(self):
        """Export CADRegularPolygon to a QgsGeometry (Polygon)"""
        return QgsGeometry.fromPolygon([[QgsPoint(p.x, p.y)
                                         for p in self.__points]])
