# -*- coding: utf-8 -*-

from datetime import datetime
from qgis.core import QgsFeatureRequest
from qgis.utils import iface
from PyQt4.QtGui import QDialog,QMessageBox

global featureId
featureId = sys.var[0]

def updateField():
    maCouche = iface.activeLayer()
    layerName = maCouche.name()
    formTitle = layerName + u" - Attributs d'entités"

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
            if not feature[vYear] or feature[vYear] == 0:
                #print(feature[vYear])
                feature[vYear] = year
            else:
                #print(feature[vYear])
                pass


            if iface.openFeatureForm(maCouche, feature):
                maCouche.updateFeature(feature)
                num_e = 0
                num_v = 0
                num_h = 0
                num_i = 0
                for layer in QgsMapLayerRegistry.instance().mapLayers().values():
                    uri = QgsDataSourceURI(layer.source())
                    name = uri.schema() + "." + uri.table()
                    if name in ["qwat_od.valve", "qwat_od.part" , "qwat_od.hydrant", "qwat_od.subscriber"]:
                        num_elements = 0
                        if not layer.isEditable():
                            layer.startEditing()
                        for feat in layer.getFeatures(QgsFeatureRequest(feature.geometry().boundingBox())):
                            if feat.geometry().intersects(feature.geometry().buffer(0.03, 3)):
                                num = 0
                                for f in maCouche.getFeatures(QgsFeatureRequest(feat.geometry().boundingBox())):
                                    if f.geometry().intersects(feat.geometry().buffer(0.03, 3)):
                                        num += 1
                                if num == 1:
                                    if feat[vStatus] != 1301:
                                        feat[vStatus] = 1301
                                        if not feat[vYear] or feat[vYear] ==0:
                                            feat[vYear] = year
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

updateField()