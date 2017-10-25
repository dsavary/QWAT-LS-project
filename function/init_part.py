# -*- coding: utf-8 -*-

from PyQt4.QtGui import QLineEdit, QComboBox
from qgis.core import QgsFeatureRequest
from qgis.utils import iface


def my_form_open(dialog, layer, feature):
    
    #attributs de l'objet
    print feature.id()
    geom = feature.geometry()
    
    if geom is not None and layer.isEditable():
        
        # attributs du dialog de l'objet
        line_stat = dialog.findChild(QComboBox, "fk_status")
        line_annee = dialog.findChild(QLineEdit, "year")
        #line_pression = dialog.findChild(QComboBox, "pipe_fk_pressurezone")
        #line_district = dialog.findChild(QComboBox, "pipe_fk_district")

        # tables de valeur
        stat_layer = None
        pression_layer = None
        district_layer = None

        # variables
        num_cond = 0
        status = 0
        annee = NULL
        pression = 0
        district = 0
        # obtenir la légende de la carte et vérifier si la couche est visible / attention ne contrôle pas si l'objet est visible selon le style défini
        legend = iface.legendInterface()
        for lay in QgsMapLayerRegistry.instance().mapLayers().values():
            uri = QgsDataSourceURI(lay.source())
            name = uri.schema() + "." + uri.table()
            if name == "qwat_od.pipe" :# and legend.isLayerVisible(lay):
                for feat in lay.getFeatures(QgsFeatureRequest(geom.boundingBox())):
                    if feat.geometry().intersects(geom.buffer(0.03, 3)):
                        # mise à jour des attributs de l'objet
                        if not feature[u"fk_status"] or feature.id() <= 0:
                            status = feat[u"fk_status"]
                        if not feature[u"year"] or feature.id() <= 0:
                            annee = feat[u"year"]
                        pression = feat[u"fk_pressurezone"]
                        district = feat[u"fk_district"]
                        num_cond += 1
                        #print feature.id()
            if name == "qwat_vl.status":
                stat_layer = lay
            if name == "qwat_od.district":
                district_layer = lay
            if name == "qwat_od.pressurezone":
                pression_layer = lay

        if num_cond == 0:
            print("pas de conduite ici")
            # aucune mise à jour du formulaire
            # reprise des infos par défaut si définies dans le formulaire QGIS
        else:
            # mise à jour du formulaire à l'ouverture 
            # année
            #print(feature.id())
            if not feature[u"year"] or feature.id() <= 0:
                line_annee.setText(str(annee))
            # statut
            if not feature[u"fk_status"] or feature.id() <= 0:
                stat_v = None
                for f in stat_layer.getFeatures(QgsFeatureRequest(status)):
                    stat_v = f[u"value_fr"]
                if stat_v is not None:
                    line_stat.setCurrentIndex(line_stat.findText(stat_v))
            
            #layer.updateFeature(feature)

            # commune
            '''
            if not feature[u"pipe_fk_district"] or feature.id() <= 0:
                district_v = None            
                for fd in district_layer.getFeatures(QgsFeatureRequest(district)):
                    district_v = fd[u"name"]
                if district_v is not None:
                    line_district.setCurrentIndex(line_district.findText(district_v))
            # zone de pression
            if not feature[u"pipe_fk_pressurezone"] or feature.id() <= 0:
                pression_v = None            
                for fp in pression_layer.getFeatures(QgsFeatureRequest(pression)):
                    pression_v = fp[u"name"]
                if pression_v is not None:
                    line_pression.setCurrentIndex(line_pression.findText(pression_v))
            '''
            if num_cond > 1:
                print("plusieurs conduites")
    else:
        pass