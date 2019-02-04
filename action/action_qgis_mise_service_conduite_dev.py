# -*- coding: utf-8 -*-

from datetime import datetime
from qgis.core import QgsFeatureRequest
from qgis.utils import iface
from PyQt4.QtGui import QDialog,QMessageBox,QInputDialog

global featureId
featureId = sys.var[0]
# liste des identifiants des couches du projet oû l'archivage est possible / Attention à la structure du projet si une couche est rajoutée par la suite dans le projet
layerIds = ["valve20130304110011497" , "od_part20140429113327995","hydrant20130304110004848"]

def updateField():
    maCouche = iface.activeLayer()
    layerName = maCouche.name()
    formTitle = layerName + u" - Attributs d'entités"
    layers = QgsMapLayerRegistry.instance().mapLayers() # liste des couches du projet

    for w in iface.mainWindow().findChildren(QDialog):
        if w.windowTitle() == formTitle and w.isActiveWindow():
            w.reject()

    vYear = u"year"
    vStatus = u"fk_status"
    year = datetime.now().year
    for feature in maCouche.getFeatures(QgsFeatureRequest(int(featureId))):
        msgBox = QMessageBox()
        if feature[vStatus] == 1301:
            text_service = u"La conduite ID ="+str(featureId) + u" est déjà en service, depuis " + str(feature[vYear])
            msgBox.setText(text_service)
            msgBox.exec_()
        else:
            if not maCouche.isEditable():
                maCouche.startEditing()
            feature[vStatus] = 1301
            input_rep = QInputDialog()
            year, ok = input_rep.getInt(None, u"Annee de service ", u"indiquez l'ann\xe9e de mise en service (4 chiffres)", datetime.now().year, 1860,datetime.now().year, 1)
            if ok:
                if not feature[vYear] or feature[vYear] == 0:
                    #print(feature[vYear])
                    feature[vYear] = year
                elif feature[vYear] <> year:
                   reply = QMessageBox.question(iface.mainWindow(), u"Différence entre l'année de pose et l'année de mise en service",u"Une année de pose a déjà été saisie : " + str(feature[vYear]) + u" sur la conduite (ID : "+ str(feature.id()) +u") , êtes-vous sûr de vouloir la modifier en "+ str(year)+ u"?", QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
                   if reply == QMessageBox.Yes:
                       feature[vYear] = year
                   else:
                       year = feature[vYear]
                else:
                    #print(feature[vYear])
                    pass


                if iface.openFeatureForm(maCouche, feature):
                    maCouche.updateFeature(feature)
                    num_e = 0
                    num_v = 0
                    num_h = 0
                    num_i = 0
                    for i in range(0,len(layerIds)):
                            if layerIds[i] not in layers:
                                text_layer = u"La couche avec ID = "+ str(layerIds[i]) + u" n'existe plus ou pas dans le projet, merci de vérifier la structure du projet sinon elle ne sera pas prise en compte dans la mise en service"
                                msgBox.setText(text_layer)
                                msgBox.exec_()
                    for layer in layers.values():
                        uri = QgsDataSourceURI(layer.source())
                        name = uri.schema() + "." + uri.table()
                        #if name in ["qwat_od.valve", "qwat_od.part" , "qwat_od.hydrant", "qwat_od.subscriber"]:
                        if layer.id() in layerIds:
                            num_elements = 0
                            if not layer.isEditable():
                                layer.startEditing()
                            req = QgsFeatureRequest(feature.geometry().boundingBox()).setFilterExpression(' "fk_status" = \'103\' ')
                            for feat in layer.getFeatures(req):
                                if feat.geometry().intersects(feature.geometry()):
                                    num = 0
                                    for f in maCouche.getFeatures(QgsFeatureRequest(feat.geometry().boundingBox()).setFilterExpression(' "fk_status" != \'1301\' ')):
                                        if f.geometry().intersects(feat.geometry()) and f.id() != featureId:
                                            num += 1
                                    if num == 0:
                                        if feat[vStatus] != 1301:
                                            feat[vStatus] = 1301
                                            if not feat[vYear] or feat[vYear] ==0:
                                                feat[vYear] = year
                                            elif feat[vYear] <> year:
                                                reply_obj = QMessageBox.question(iface.mainWindow(), u"Différence entre l'année de pose et l'année de mise en service",u"Une année de pose a déjà été saisie : " + str(feat[vYear]) + u" sur l'objet '"+ layer.name() +u"' (ID : "+ str(feat.id()) +u"), êtes-vous sûr de vouloir la modifier en "+ str(year)+ u"?", QMessageBox.Yes | QMessageBox.No, QMessageBox.No)
                                                if reply_obj == QMessageBox.Yes:
                                                    feat[vYear] = year
                                                else:
                                                    pass
                                            layer.updateFeature(feat)
                                            num_elements += 1
                            if name == "qwat_od.valve":
                                num_v = num_elements
                            if name == "qwat_od.part" :
                                num_e = num_elements
                            if name == "qwat_od.hydrant":
                                num_h = num_elements
                            if name == "qwat_od.subscriber":
                                num_i = num_elements

                    text = u"La conduite ID ="+str(featureId)+ u" a \xe9t\xe9 mise en service avec l'ann\xe9e : " + str(feature[vYear])
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
                else:
                    pass
            else:
                pass

updateField()