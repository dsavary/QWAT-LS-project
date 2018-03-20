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

from CADDigitize_tools_arc import (ArcBy3PointsTool,
                                   ArcByCenter2PointsTool,
                                   ArcByCenterPointAngleTool)

from CADDigitize_tools_circle import (CircleBy2PointsTool,
                                      CircleBy3PointsTool,
                                      CircleByCenterPointTool,
                                      CircleBy2TangentsTool)
from CADDigitize_tools_ellipse import (EllipseByCenter2PointsTool,
                                       EllipseByFociPointTool,
                                       EllipseFromCenterTool,
                                       EllipseByExtentTool,
                                       EllipseByCenter3PointsTool,
                                       EllipseBy4PointsTool)
from CADDigitize_tools_rect import (RectBy3PointsTool,
                                    RectByExtentTool,
                                    RectFromCenterTool,
                                    SquareFromCenterTool)
from CADDigitize_tools_regularpolygon import (RPolygonByCenterPointTool,
                                              RPolygon2CornersTool)
from CADDigitize_tools_modify import (ModifySimpleExtentTool,
                                      ModifyMultipleExtentTool,
                                      ModifyOffsetTool,
                                      ModifySimpleTrimTool,
                                      ModifyMultipleTrimTool
                                      )

from PyQt4.QtGui import QApplication
from ..CADDigitize_tr import tr


# Icon,Text,Callback,tips,What_this,Enable,Visible
circleActions = [[':/plugins/CADDigitize/icons/circleBy2Points.svg',
                  tr(u"Circle by 2 points"),
                  CircleBy2PointsTool,
                  '',
                  '',
                  True,
                  True],
                 [':/plugins/CADDigitize/icons/circleBy3Points.svg',
                  tr(u"Circle by 3 points"),
                  CircleBy3PointsTool,
                  '',
                  '',
                  True,
                  True],
                 [':/plugins/CADDigitize/icons/circleByCenterPoint.svg',
                  tr(u"Circle by center and a point"),
                  CircleByCenterPointTool,
                  '',
                  '',
                  True,
                  True],
                 [':/plugins/CADDigitize/icons/circleBy2Tangents.svg',
                  tr(u"Circle by 2 tangents"),
                  CircleBy2TangentsTool,
                  '',
                  '',
                  True,
                  True]
                 ]

rectActions = [[':/plugins/CADDigitize/icons/rectBy3Points.svg',
                tr(u"Rectangle by 3 points"),
                RectBy3PointsTool,
                '',
                '',
                True,
                True],
               [':/plugins/CADDigitize/icons/rectByExtent.svg',
                tr(u"Rectangle by extent"),
                RectByExtentTool,
                '',
                '',
                True,
                True],
               [':/plugins/CADDigitize/icons/rectFromCenter.svg',
                tr(u"Rectangle from center"),
                RectFromCenterTool,
                '',
                '',
                True,
                True],
               [':/plugins/CADDigitize/icons/squareFromCenter.svg',
                tr(u"Square from center"),
                SquareFromCenterTool,
                '',
                '',
                True,
                True]
               ]

ellipseActions = [[':/plugins/CADDigitize/icons/ellipseByCenter2Points.svg',
                   tr(u"Ellipse by center and 2 points"),
                   EllipseByCenter2PointsTool,
                   '',
                   '',
                   True,
                   True],
                  [':/plugins/CADDigitize/icons/ellipseByFociPoint.svg',
                   tr(u"Ellipse by foci and a point"),
                   EllipseByFociPointTool,
                   '',
                   '',
                   True,
                   True],
                  [':/plugins/CADDigitize/icons/ellipseFromCenter.svg',
                   tr(u"Ellipse from center"),
                   EllipseFromCenterTool,
                   '',
                   '',
                   True,
                   True],
                  [':/plugins/CADDigitize/icons/ellipseByExtent.svg',
                   tr(u"Ellipse by extent"),
                   EllipseByExtentTool,
                   '',
                   '',
                   True,
                   True]
#                  [':/plugins/CADDigitize/icons/ellipseByCenter3Points.svg',
#                   tr(u"Ellipse by center and 3 points"),
#                   TestTool,
#                   '',
#                   '',
#                   False,
#                   False],
#                  [':/plugins/CADDigitize/icons/ellipseBy4Points.svg',
#                   tr(u"Ellipse by 4 points"),
#                   TestTool,
#                   '',
#                   '',
#                   False,
#                   False]
                  ]

arcActions = [[':/plugins/CADDigitize/icons/arcByCenter2Points.svg',
               tr(u"Arc by center and 2 points"),
               ArcByCenter2PointsTool,
               '',
               '',
               True,
               True],
              [':/plugins/CADDigitize/icons/arcBy3Points.svg',
               tr(u"Arc by 3 points"),
               ArcBy3PointsTool,
               '',
               '',
               True,
               True],
              [':/plugins/CADDigitize/icons/arcByCenterPointAngle.svg',
               tr(u"Arc by center, point and angle"),
               ArcByCenterPointAngleTool,
               '',
               '',
               True,
               True]
              ]

rpolygonActions = [[':/plugins/CADDigitize/icons/rpolygonByCenterPoint.svg',
                    tr(u"Regular polygon by center and point"),
                    RPolygonByCenterPointTool,
                    '',
                    '',
                    True,
                    True],
                   [':/plugins/CADDigitize/icons/rpolygonBy2Corners.svg',
                    tr(u"Regular polygon by 2 corners"),
                    RPolygon2CornersTool,
                    '',
                    '',
                    True,
                    True]
                   ]

modifyActions = [[':/plugins/CADDigitize/icons/modifyOffset.svg',
                  tr(u"Offset"),
                  ModifyOffsetTool,
                  '',
                  '',
                  True,
                  True],
                 [':/plugins/CADDigitize/icons/modifyExtend.svg',
                  tr(u"Extend"),
                  ModifySimpleExtentTool,
                  '',
                  '',
                  True,
                  True],
                 [':/plugins/CADDigitize/icons/modifyExtend.svg',
                  tr(u"Multiple Extend"),
                  ModifyMultipleExtentTool,
                  '',
                  '',
                  False,
                  False],
                 [':/plugins/CADDigitize/icons/modifyTrim.svg',
                  tr(u"Trim"),
                  ModifySimpleTrimTool,
                  '',
                  '',
                  True,
                  True],
                 [':/plugins/CADDigitize/icons/modifyTrim.svg',
                  tr(u"Multiple Trim"),
                  ModifyMultipleTrimTool,
                  '',
                  '',
                  False,
                  False]
#                 [':/plugins/CADDigitize/icons/modifyFillet.svg',
#                  tr(u"Fillet"),
#                  TestTool,
#                  '',
#                  '',
#                  False,
#                  False],
#                 [':/plugins/CADDigitize/icons/modifyBevel.svg',
#                  tr(u"Bevel"),
#                  TestTool,
#                  '',
#                  '',
#                  False,
#                  False]
                 ]

actions = ["Circles", "Rectangles", "Ellipses", "Arcs", "Regular Polygons",
           "Modify"]
actionTools = [circleActions, rectActions, ellipseActions, arcActions,
               rpolygonActions, modifyActions]
