# -*- coding: utf-8 -*-

from datetime import datetime
from qgis.core import QgsFeatureRequest
from qgis.utils import iface

def updateField():
    maCouche = iface.activeLayer()
    vYear = u"year_end"
    vStatus = u"fk_status"
    for feature in maCouche.getFeatures(QgsFeatureRequest(int([%$id%]))):
        msgBox = QtGui.QMessageBox()
        if feature[vStatus] == 13002:
            text_arch = u"L'objet ID = [%$id%] de la couche '" + str(maCouche.name()) + u"' a déjà été archivé en " + str(feature[vYear])
            msgBox.setText(text_arch)
            msgBox.exec_()
        if feature[vStatus] != 13002:
            input_rep = QtGui.QInputDialog()
            year_end, ok = input_rep.getInt(None, u"Annee d'archivage ", u"indiquez l'ann\xe9e d'archive (4 chiffres)", datetime.now().year, 1800,2999, 1)
            if ok:
                if not maCouche.isEditable():
                    maCouche.startEditing()
                feature[vStatus] = 13002
                feature[vYear] = year_end
                if iface.openFeatureForm(maCouche, feature):
                    maCouche.updateFeature(feature)
                    text = u"L'objet ID = [%$id%] de la couche '" + str(maCouche.name()) + u"' \xe9t\xe9 archiv\xe9 en " + str(year_end)
                    msgBox.setText(text)
                    msgBox.exec_()
                else:
                    pass
            else:
                pass
        else:
            pass

updateField()