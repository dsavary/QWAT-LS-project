# -*- coding: utf-8 -*-

from datetime import datetime
from qgis.core import QgsFeatureRequest
from qgis.utils import iface

def updateField():

    # fonction (action QGIS) qui permet d'archiver une conduite (changement du statut et d�finition de l'ann�e d'archive), ainsi que tous les �l�ments de r�seau qui touchent la conduite en question sauf aux extr�mit�s
    # ouverture d'une boite de dialogue pour d�finir l'ann�e
    input_rep = QtGui.QInputDialog()
    year_end, ok = input_rep.getInt(None, u"Annee d'archivage ", u"indiquez l'annee (4 chiffres)", datetime.now().year, 1800,2999, 1)
    
    if ok:
        maCouche = iface.activeLayer()
        vYear = u"year_end"
        vStatus = u"fk_status"
        # passer en �dition la couche si elle ne l'est pas
        if not maCouche.isEditable():
            maCouche.startEditing()
        # modifier les attributs de l'objets "conduite"
        for feature in maCouche.getFeatures(QgsFeatureRequest(int([%$id%]))):
            feature[vYear] = year_end
            if feature[vStatus] != 13002:
                feature[vStatus] = 13002
        # partie � rajouter dans le code
        # identifier si le fomulaire de l'objet en question (id conduite) est d�j� ouvert ?? aucune id�e
        # Si oui 
        # modifier/ mettre � jour les attributs (statut et ann�e) de l'objet et rafra�chir le formulaire avec les nouvelles valeurs
        # dialog = iface.getFeatureForm(maCouche, feature)  / r�cup�rer le fomulaire
        # dialog.attributeForm().refreshFeature() ou dialog.attributeForm().resetValues()  ?? / rafra�chir les infos du formulaires 
        # Si non
        # ouvrir le formulaire en question avec les nouvelles valeurs de statuts et d'ann�e (ceci fonctionne d�j�)
        '''
        dialog = iface.getFeatureForm(maCouche, feature)
        if dialog.isVisible():
            pass
        else:
            dialog.show()
        '''
        # ouvrir le formulaire de l'objet "conduite"
        # � modifier , pour l'instant le fomulaire s'ouvre chaque fois que l'action est execut� m�me si le formulaire de l'objet en question est d�j� ouvert.
        if iface.openFeatureForm(maCouche, feature):
            maCouche.updateFeature(feature)
            num_e = 0
            num_v = 0
            num_h = 0
            num_i = 0
            for layer in QgsMapLayerRegistry.instance().mapLayers().values():
                if layer.name() == u"vannes" or layer.name() == u"\xe9l\xe9ments de montage" or layer.name() == u"hydrants" or layer.name() == u"introduction":
                    # print unicode(layer.name())
                    num_elements = 0
                    if not layer.isEditable():
                        layer.startEditing()
                    for feat in layer.getFeatures(QgsFeatureRequest(feature.geometry().boundingBox())):
                        if feat.geometry().intersects(feature.geometry().buffer(0.03, 3)):
                            num = 0
                            for f in maCouche.getFeatures(QgsFeatureRequest(feat.geometry().boundingBox())):
                                if f.geometry().intersects(feat.geometry().buffer(0.03, 3)):
                                    num += 1
                            # print("int",feat.id(),num)
                            if num == 1:
                                if feat[vStatus] != 13002:
                                    feat[vStatus] = 13002
                                    feat[vYear] = year_end
                                    layer.updateFeature(feat)
                                    num_elements += 1
                    if layer.name() == u"vannes":
                        num_v = num_elements
                    if layer.name() == u"\xe9l\xe9ments de montage":
                        num_e = num_elements
                    if layer.name() == u"hydrants":
                        num_h = num_elements
                    if layer.name() == u"introduction":
                        num_i = num_elements

            # message de confirmation et retour � l'utilisateur du changement effectu�        
            msgBox = QtGui.QMessageBox()
            text = u"La conduite ID =  [%$id%] a ete archivee en " + str(year_end)
            if num_v > 0 or num_e > 0 or num_h > 0 or num_i > 0:
                text += u"\n ainsi que :"
                if num_v > 0:
                    text += u"\n - " + str(num_v) + u" vannes"
                if num_e > 0:
                    text += u"\n - " + str(num_e) + u" \xe9l\xe9ments de montage"
                if num_h > 0:
                    text += u"\n - " + str(num_h) + u" hydrants"
                if num_i > 0:
                    text += u"\n - " + str(num_i) + u" introductions"
            msgBox.setText(text)
            msgBox.exec_()


updateField()