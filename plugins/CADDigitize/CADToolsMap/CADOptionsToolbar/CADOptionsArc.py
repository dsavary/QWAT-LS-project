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
from PyQt4.QtGui import QSpinBox, QDoubleSpinBox, QApplication, QComboBox
from CADOptionsToolbar import CADOptionsToolbar
from ...CADDigitize_tr import tr


class CADOptionsToolbar_Arc(CADOptionsToolbar):
    def __init__(self, layer):
        super(CADOptionsToolbar_Arc, self).__init__()
        self.settings = QSettings()

        self.arc_featurePitch = self.settings.value("/CADDigitize/arc/pitch",
                                                    2, type=float)
        self.arc_featureAngle = self.settings.value("/CADDigitize/arc/angle",
                                                    1, type=int)
        self.arc_method = self.settings.value("/CADDigitize/arc/method",
                                              "pitch", type=str)
        self.arc_angleDirection = self.settings.value(
                                        "/CADDigitize/arc/direction",
                                        "ClockWise", type=str)
        if layer.geometryType() == 2:
            self.arc_polygonCreation = self.settings.value(
                "/CADDigitize/arc/polygon",  "pie")
            self.ArcPolygonCombo = QComboBox(self.optionsToolBar)
            self.ArcPolygonCombo.addItems([
                tr(u"Pie segment"),
                tr(u"Chord")])
            self.ArcPolygonComboAction = self.optionsToolBar.addWidget(
                self.ArcPolygonCombo)
            if self.arc_polygonCreation == "pie":
                self.ArcPolygonCombo.setCurrentIndex(0)
            else:
                self.ArcPolygonCombo.setCurrentIndex(1)

            self.ArcPolygonCombo.currentIndexChanged["int"].connect(
                self.polygonArc)

        self.ArcAngleDirectionCombo = QComboBox(self.optionsToolBar)
        self.ArcAngleDirectionCombo.addItems([
            tr(u"ClockWise"),
            tr(u"CounterClockWise")])
        self.ArcAngleDirectionComboAction = self.optionsToolBar.addWidget(
            self.ArcAngleDirectionCombo)

        self.ArcFeatureCombo = QComboBox(self.optionsToolBar)
        self.ArcFeatureCombo.addItems([
            tr(u"Pitch"),
            tr(u"Angle")])
        self.ArcFeatureComboAction = self.optionsToolBar.addWidget(
            self.ArcFeatureCombo)

        self.ArcPitchSpin = QDoubleSpinBox(self.optionsToolBar)
        self.ArcPitchSpin.setMinimum(1)
        self.ArcPitchSpin.setMaximum(1000)
        self.ArcPitchSpin.setDecimals(1)
        self.ArcPitchSpin.setValue(self.arc_featurePitch)
        self.ArcPitchSpinAction = self.optionsToolBar.addWidget(
            self.ArcPitchSpin)
        self.ArcPitchSpin.setToolTip(tr(u"Pitch"))
        self.ArcPitchSpinAction.setEnabled(True)

        self.ArcAngleSpin = QDoubleSpinBox(self.optionsToolBar)
        self.ArcAngleSpin.setMinimum(1)
        self.ArcAngleSpin.setMaximum(3600)
        self.ArcAngleSpin.setDecimals(0)
        self.ArcAngleSpin.setValue(self.arc_featureAngle)
        self.ArcAngleSpinAction = self.optionsToolBar.addWidget(
            self.ArcAngleSpin)
        self.ArcAngleSpin.setToolTip(tr(u"Angle"))
        self.ArcAngleSpinAction.setEnabled(True)

        if self.arc_method == "pitch":
            self.ArcPitchSpin.setEnabled(True)
            self.ArcAngleSpin.setEnabled(False)
            self.ArcFeatureCombo.setCurrentIndex(0)
        else:
            self.ArcPitchSpin.setEnabled(False)
            self.ArcAngleSpin.setEnabled(True)
            self.ArcFeatureCombo.setCurrentIndex(1)

        if self.arc_angleDirection == "ClockWise":
            self.ArcAngleDirectionCombo.setCurrentIndex(0)
        else:
            self.ArcAngleDirectionCombo.setCurrentIndex(1)

        self.ArcPitchSpin.valueChanged["double"].connect(
            self.pitchSettings)
        self.ArcAngleSpin.valueChanged["double"].connect(
            self.angleSettings)
        self.ArcFeatureCombo.currentIndexChanged["int"].connect(
            self.featureArc)
        self.ArcAngleDirectionCombo.currentIndexChanged["int"].connect(
            self.angleDirectionArc)

    def polygonArc(self):
        if self.ArcPolygonCombo.currentIndex() == 0:
            self.settings.setValue("/CADDigitize/arc/polygon", "pie")
        else:
            self.settings.setValue("/CADDigitize/arc/polygon", "chord")

    def angleDirectionArc(self):
        if self.ArcAngleDirectionCombo.currentIndex() == 0:
            self.settings.setValue("/CADDigitize/arc/direction",
                                   "ClockWise")
        else:
            self.settings.setValue("/CADDigitize/arc/direction",
                                   "CounterClockWise")

    def angleSettings(self):
        self.arc_featureAngle = self.ArcAngleSpin.value()
        self.settings.setValue("/CADDigitize/arc/angle",
                               self.arc_featureAngle)

    def pitchSettings(self):
        self.arc_featurePitch = self.ArcPitchSpin.value()
        self.settings.setValue("/CADDigitize/arc/pitch",
                               self.arc_featurePitch)

    def featureArc(self):
        if self.ArcFeatureCombo.currentIndex() == 0:
            self.ArcPitchSpin.setEnabled(True)
            self.ArcAngleSpin.setEnabled(False)
            self.settings.setValue("/CADDigitize/arc/method",
                                   "pitch")
        else:
            self.ArcPitchSpin.setEnabled(False)
            self.ArcAngleSpin.setEnabled(True)
            self.settings.setValue("/CADDigitize/arc/method",
                                   "angle")
