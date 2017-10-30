# -*- coding: utf-8 -*-

from PyQt4.QtGui import QLineEdit, QComboBox,QMessageBox
from qgis.core import QgsFeatureRequest
from qgis.utils import iface
from qgis.gui import QgsMessageBar


def my_form_open(dialog, layer, feature):
    
    #attributs de l'objet
    print feature.id()
    geom = feature.geometry()
    
    if geom is not None and layer.isEditable():
        if feature[u"closed"] == 't' and feature[u"fk_function"] not in [6102,6103,6110,6112] or feature[u"networkseparation"] == 't':
            text = ''
            if feature[u"closed"] == 't':
                text += u"ATTENTION !! La vanne est fermée"
            if feature[u"closed"] == 't' and feature[u"networkseparation"] == 't':
                text += u"\n"
            if feature[u"networkseparation"] == 't':
                text += u"ATTENTION !! Vanne inter-réseau"
            msgBox = QtGui.QMessageBox()
            msgBox.setText(text)
            msgBox.setIcon(2)
            msgBox.setWindowTitle("Attention !! ")
            msgBox.exec_()
        if feature.id() <= 0 or not feature[u"fk_status"] or not feature[u"year"] or not feature[u"fk_district"] or not feature[u"fk_pressurezone"]:
            # attributs du dialog de l'objet
            line_stat = dialog.findChild(QComboBox, "fk_status")
            line_annee = dialog.findChild(QLineEdit, "year")
            line_pression = dialog.findChild(QComboBox, "fk_pressurezone")
            line_district = dialog.findChild(QComboBox, "fk_district")

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
                            print feat.id()
                if name == "qwat_vl.status":
                    stat_layer = lay
                if name == "qwat_od.district":
                    district_layer = lay
                if name == "qwat_od.pressurezone":
                    pression_layer = lay

            if num_cond == 0:
                print("pas de conduite ici")
                # aucune mise à jour du formulaire dépendant de la conduite sauf pour la zone de pression et la commune
                iface.messageBar().pushMessage("Attention", u"Aucune conduite sous l'objet réseau", level=QgsMessageBar.WARNING, duration=4)
                # reprise des infos par défaut si définies dans le formulaire QGIS
                # commune
                if not feature[u"fk_district"] or feature.id() <= 0:
                    district_v = None            
                    for fd in district_layer.getFeatures(QgsFeatureRequest(geom.boundingBox())):
                        if fd.geometry().intersects(geom.buffer(0.03, 3)) and fd[u"usr_active"] == "t":
                            district_v = fd[u"name"]
                            if district_v is not None:
                                line_district.setCurrentIndex(line_district.findText(district_v))
                # zone de pression
                if not feature[u"fk_pressurezone"] or feature.id() <= 0:
                    pression_v = None            
                    for fp in pression_layer.getFeatures(QgsFeatureRequest(geom.boundingBox())):
                        if fp.geometry().intersects(geom.buffer(0.03, 3)) and fp[u"usr_active"] == "t":
                            pression_v = fp[u"name"]
                            if pression_v is not None:
                                line_pression.setCurrentIndex(line_pression.findText(pression_v))
                
            else:
                # mise à jour du formulaire à l'ouverture | récupération des données de la conduite
                iface.messageBar().pushMessage("Infos", u"attributs récupérés de la conduite", level=QgsMessageBar.INFO, duration=4)
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
                if not feature[u"fk_district"] or feature.id() <= 0:
                    district_v = None            
                    for fd in district_layer.getFeatures(QgsFeatureRequest(district)):
                        district_v = fd[u"name"]
                    if district_v is not None:
                        line_district.setCurrentIndex(line_district.findText(district_v))
                # zone de pression
                if not feature[u"fk_pressurezone"] or feature.id() <= 0:
                    pression_v = None            
                    for fp in pression_layer.getFeatures(QgsFeatureRequest(pression)):
                        pression_v = fp[u"name"]
                    if pression_v is not None:
                        line_pression.setCurrentIndex(line_pression.findText(pression_v))

                if num_cond > 1:
                    iface.messageBar().pushMessage("Attention", u"Plusieurs conduites sous l'objet réseau", level=QgsMessageBar.INFO, duration=4)
                    #print("plusieurs conduites")
        else:
            pass
    else:
        pass