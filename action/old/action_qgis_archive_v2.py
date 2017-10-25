def updateField():
    input_rep = QtGui.QInputDialog()
    year_end, ok = input_rep.getInt(None, u"Ann\xe9e d'archivage ", u"indiquez l'ann\xe9e (4 chiffres)",
                                    datetime.now().year, 1800, 2999, 1)
    if ok:
        maCouche = qgis.utils.iface.activeLayer()
        vYear = u"year_end"
        vStatus = u"fk_status"
        if not maCouche.isEditable():
            maCouche.startEditing()
        for feature in maCouche.getFeatures(qgis.core.QgsFeatureRequest(int([%$id%]))):
            feature[vYear] = year_end
            if feature[vStatus] != 13002:
                feature[vStatus] = 13002
        if qgis.utils.iface.openFeatureForm(maCouche, feature):
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
                    for feat in layer.getFeatures(qgis.core.QgsFeatureRequest(feature.geometry().boundingBox())):
                        if feat.geometry().intersects(feature.geometry().buffer(0.03, 3)):
                            num = 0
                            for f in maCouche.getFeatures(qgis.core.QgsFeatureRequest(feat.geometry().boundingBox())):
                                if f.geometry().intersects(feat.geometry().buffer(0.03, 3)):
                                    num += 1
                            if num == 1:
                                if feat[vStatus] != 13002:
                                    feat[vStatus] = 13002
                                    feat[vYear] = year_end
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