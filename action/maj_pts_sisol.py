# -*- coding: utf-8 -*-

from qgis.core import QgsFeatureRequest,QgsPointV2,QgsGeometry
from qgis.utils import iface
from PyQt4.QtGui import QDialog

global featureId
featureId = sys.var[0]

def updateFieldSisol():

        maCouche = iface.activeLayer()
        vStatus = u"fk_status"
        vSisol = u"usr_cale_sisol"
        vPrecision = u"fk_precision"
        vAltitude = u"altitude"
        vPrecisionalti = u"fk_precisionalti"
        vCoordZ = u"z"
        global feats_sisol
        feats_sisol = []
        num_e = 0
        num_s = 0

        if not maCouche.isEditable():
            maCouche.startEditing()
        for feature in maCouche.getFeatures(QgsFeatureRequest(int(featureId))):
            msgBox = QtGui.QMessageBox()
            if feature[vSisol] != "t":
                feature[vSisol] = "t"
                # print("Caler la conduite")
            else:
                text_cale = u"Attention : La conduite ID =" + str(featureId) + u" a déjé été traitée et calée sur les données SISOL"
                msgBox.setText(text_cale)
                msgBox.exec_()                
                # print(feature[vSisol])
            if iface.openFeatureForm(maCouche, feature):
                maCouche.updateFeature(feature)
                for layer in QgsMapLayerRegistry.instance().mapLayers().values():
                    uri = QgsDataSourceURI(layer.source())
                    name = uri.schema() + "." + uri.table()
                    if name in ["qwat_od.usr_sisol_point"]:
                        num_s = 0
                        if not layer.isEditable():
                            layer.startEditing()
                        for feat in layer.getFeatures(QgsFeatureRequest(feature.geometry().boundingBox())):
                            if feat.geometry().intersects(feature.geometry().buffer(0.03, 3)):
                                feats_sisol.append(feat)
                                # si on veut mettre � jour les points SISOL qui ne sont pas aux extr�mit�s et qui touchent une autre conduite
                                '''
                                num = 0
                                for f in maCouche.getFeatures(QgsFeatureRequest(feat.geometry().boundingBox())):
                                    if f.geometry().intersects(feat.geometry().buffer(0.03, 3)):
                                        num += 1
                                if num == 1:
                                    if feat[vSisol] != "t":
                                        feat[vSisol] = "t"
                                    layer.updateFeature(feat)
                                    num_s += 1
                                else:
                                    pass
                                '''
                                # on met � jour tous les points sisol touchant la conduite
                                if feat[vSisol] != "t":
                                    feat[vSisol] = "t"
                                    layer.updateFeature(feat)
                                    num_s += 1
                                else:
                                    pass
                            else:
                                pass
                        # for p in feats_sisol: print p.id()
                    if name == "qwat_od.part" and feats_sisol != []:
                        text_part = ""
                        if not layer.isEditable():
                            layer.startEditing()
                        for x in layer.getFeatures(QgsFeatureRequest(feature.geometry().boundingBox())):
                            #print(x.id())
                            for pts in feats_sisol:
                                if x.geometry().intersects(pts.geometry()):
                                    #print(pts.id())
                                    if x[vSisol] != "t":
                                        x[vSisol] = "t"
                                    if x[vStatus] != 1301:
                                        x[vStatus] = 1301
                                    if x[vPrecision] != 1102:
                                        x[vPrecision] = 1102
                                    if pts[vAltitude] > 0:
                                        if not x[vCoordZ] > 0: 
                                            x[vPrecisionalti] = 11021
                                            x[vAltitude] = pts[vAltitude]
                                            pt = QgsPointV2(x.geometry().asPoint())
                                            pt.addZValue(pts[vAltitude])
                                            geomz = QgsGeometry(pt)
                                            #print(x[vCoordZ])
                                            x.setGeometry(geomz)
                                            x[vCoordZ] = pts[vAltitude]
                                            if geomz is not None:
                                                layer.changeGeometry(x.id(), geomz)
                                        else:
                                            #print "pas de modif"
                                            text_part += u"L'�l�ment ID =" + str(x.id()) + u" poss�de d�j� une alitude :" + str(x[vCoordZ]) + u" | altitude SISOL : " + str(pts[vAltitude]) + " \n"
                                    layer.updateFeature(x)
                                    num_e += 1
                                else:
                                    pass
                        if text_part:
                            msgBox.setWindowTitle(u"Pas de modifcation de la coordonn�e Z")
                            msgBox.setText(text_part)
                            msgBox.exec_()
                    else:
                        pass
                        #print(num_e)
                text = u"La conduite ID =" + str(featureId) + u" mise a jour sisol "
                if num_s > 0 or num_e > 0:
                    text += u"\n ainsi que :"
                    if num_s > 0:
                        text += u"\n - " + str(num_s) + u" pts SISOL"
                    if num_e > 0:
                        text += u"\n - " + str(num_e) + u" \xe9l\xe9ments de montage"
                    else:
                        pass
                else:
                    pass
                msgBox.setText(text)
                msgBox.exec_()
            else:
                pass

updateFieldSisol()