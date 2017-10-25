# -*- coding: utf-8 -*-

from qgis.core import (QgsPointV2,QgsGeometry,QgsFeatureRequest)
from qgis.utils import iface
from PyQt4.QtGui import QDialog

global featureId
featureId = sys.var[0]

def repriseInfoSurvey():

        maCouche = iface.activeLayer()
        layerName = maCouche.name()
        registry = QgsMapLayerRegistry.instance()
        formTitle = layerName + u" - Attributs d'entités"

        for w in iface.mainWindow().findChildren(QDialog):
            if w.windowTitle() == formTitle and w.isActiveWindow():
                w.reject()

        vStatus = u"fk_status"
        vSisol = u"usr_cale_sisol"
        vPrecision = u"fk_precision"
        vAltitude = u"altitude"
        vPrecisionalti = u"fk_precisionalti"
        vZsurvey = u"Coord Z [m]"
        vZobj = u"z"
        text =u""
        layerSurvey = next((l for l in registry.mapLayers().values() if l.id() == 'surveypoint20160902155615289'),None)

        for feature in maCouche.getFeatures(QgsFeatureRequest(int(featureId))):
            num_elements = 0
            geomz = None
            msgBox = QtGui.QMessageBox()
            if layerSurvey:
                feat = None
                for f in layerSurvey.getFeatures(QgsFeatureRequest(feature.geometry().boundingBox())):
                    if f.geometry().intersects(feature.geometry().buffer(0.03, 3)):
                        num_elements += 1
                        if feat is None:
                            feat = f
                if num_elements == 0:
                    text = u"Pas de point de mesures sous cette position X / Y "
                    msgBox.setText(text)
                    msgBox.exec_()
                if num_elements > 0:
                    if not maCouche.isEditable():
                        maCouche.startEditing()
                    text = u"Reprise des infos de la mesure pour l'objet r\xe9seau ID = "+ str(featureId)
                    if feat[vZsurvey] > 0 and feature[vZobj] != feat[vZsurvey]:
                        feature[vZobj] = feat[vZsurvey]
                        text += u"\n - Coord Z : " + str(feat[vZsurvey])
                        feature[vPrecisionalti] = 11021
                        text += u"\n - Pr\xe9cision altim\xe9trique : Pr\xe9cis"
                        #print(feat.geometry().asPoint())
                        pt = QgsPointV2(feat.geometry().asPoint())
                        pt.addZValue(feat[vZsurvey])
                        geomz = QgsGeometry(pt)
                        feature.setGeometry(geomz)
                        feature[u"z"] = feat[vZsurvey]
                        #print(feature.geometry().exportToWkt())
                    if feature[vPrecision] != 1102:
                        feature[vPrecision] = 1102
                        text += u"\n - Pr\xe9cision : Pr\xe9cis"
                        feature[vSisol] = "t"
                        text += u"\n - Cal\xe9 SISOL : oui"
                    msgBox.setText(text)
                    msgBox.exec_()
                if num_elements > 1:
                    text = u"Attention : plusieurs points de mesure se trouvent sous la m\xeame position"
                    msgBox.setText(text)
                    msgBox.exec_()
                break
            else:
                text = u"La couche contenant les mesures n'existent pas dans le projet id = surveypoint20160902155615289"
                msgBox.setText(text)
                msgBox.exec_()
        if num_elements >= 1:
            if iface.openFeatureForm(maCouche, feature):
                if geomz is not None:
                    maCouche.changeGeometry(feature.id(), geomz)
                maCouche.updateFeature(feature)
repriseInfoSurvey()