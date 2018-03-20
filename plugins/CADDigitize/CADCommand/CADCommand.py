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

from ..CADShape.CADCircle import *
from ..CADShape.CADCircularArc import *
from ..CADShape.CADEllipse import *
from ..CADShape.CADRectangle import *
from ..CADShape.CADRegularPolygon import *

from ..CADDigitize_feature import *
from ..CADDigitize_tr import tr

from qgis.utils import iface
from PyQt4.QtGui import QApplication

SHAPES = ["CADCircle", "CADEllipse",
          "CADRectangle", "CADRegularPolygon"]

SHAPES_EN = ["Circle", "Ellipse",
             "Rectangle", "RPolygon"]

SHAPES_LOCALE = [tr(u"Circle"),
                 tr(u"Ellipse"),
                 tr(u"Rectangle"),
                 tr(u"RPolygon")]


def execute_cmd(cmd):

    s = cmd.strip()
    print(s)
    canvas = iface.mapCanvas()
    for i, sh in enumerate(SHAPES):
        if s.find(sh) == 0:
            try:
                r = eval(s)
                createFeature(canvas, r.exportToQgsGeometry(), sh+"_cmd")
                return 1
            except:
                pass
        elif s.find(SHAPES_EN[i]) == 0:
            try:
                s = sh+s[len(SHAPES_EN[i]):]
                print(s)
                r = eval(s)
                createFeature(canvas, r.exportToQgsGeometry(), sh+"_cmd")
                return 1
            except:
                pass
        elif s.find(SHAPES_LOCALE[i]) == 0:
            try:
                s = sh+s[len(SHAPES_LOCALE[i]):]
                print(s)
                r = eval(s)
                createFeature(canvas, r.exportToQgsGeometry(), sh+"_cmd")
                return 1
            except:
                pass
    return 0
