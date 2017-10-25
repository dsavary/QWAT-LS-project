# -*- coding: utf-8 -*-

from PyQt4.QtGui import QLineEdit, QCheckBox, QComboBox
from datetime import datetime

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    line_com = dialog.findChild(QLineEdit, "fk_district")
    #print(type(line_com).__name__)
    line_zone = dialog.findChild(QLineEdit, "fk_pressurezone")
    line_cale_sisol = dialog.findChild(QCheckBox, "usr_cale_sisol")
    line_prec = dialog.findChild(QComboBox, "fk_precision")
    #print(type(line_zone).__name__)
    num_zone = 0
    num_com = 0
    zone = 0
    commune = 0
    print(feature.id())
    if len(feature.attributes()) > 0:
        if feature[u"year"] is None or feature[u"year"] == NULL:
            line_year = dialog.findChild(QLineEdit, "year")
            line_year.setText(str(datetime.now().year))
        if feature[u"usr_cale_sisol"] is None or feature[u"usr_cale_sisol"]  == NULL:
            line_cale_sisol.setCheckState(2)
            #line_cale_sisol.setChecked(1)
        if feature[u"fk_precision"] is None or feature[u"fk_precision"]  == NULL:
                v_precis = u"Précis"
                line_prec.setCurrentIndex(line_prec.findText(v_precis))

        for layer in QgsMapLayerRegistry.instance().mapLayers().values():
            if feature[u"fk_district"] is None or feature[u"fk_district"] == NULL:
                if layer.name() == "communes":
                    for feat in layer.getFeatures(qgis.core.QgsFeatureRequest(geom.boundingBox())):
                        if feat.geometry().intersects(geom.buffer(0.03, 3)):
                            print(layer.name(), feat[u"name"])
                            num_com += 1
                            commune = feat[u"name"]
                line_com.setText(str(commune))
            if feature[u"fk_pressurezone"] is None or feature[u"fk_pressurezone"] == NULL:
                if layer.name() == "zones de pressions":
                    for feat in layer.getFeatures(qgis.core.QgsFeatureRequest(geom.boundingBox())):
                        if feat.geometry().intersects(geom.buffer(0.03, 3)):
                            print(layer.name(), feat[u"name"])
                            num_zone += 1
                            zone = feat[u"name"]
                line_zone.setText(str(zone))


        if num_com == 0:
            print "pas de commune"
        if num_com > 1:
            print "plusieurs communes"

        if num_zone == 0:
            print "pas de zone de pression"
        if num_zone > 1:
            print "plusieurs zones de pressions"
