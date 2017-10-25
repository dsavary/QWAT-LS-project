# -*- coding: utf-8 -*-
# récupération des variables provenant de la couche où est définie l'action
layer_id  = sys.layerid
feature_id = sys.featureid

layerDetail = QgsMapLayerRegistry.instance().mapLayer(layer_id)
layerDetail.removeSelection()
# filtre pour récupérer le bon objet
request = QgsFeatureRequest().setFilterExpression( '"id" = {0}'.format(feature_id))
feature = layerDetail.getFeatures(request).next()
# démarrer l'édition
layerDetail.startEditing()
# sélectionner l'objet
layerDetail.setSelectedFeatures([feature.id()])
qgis.utils.iface.setActiveLayer(layerDetail)
# activer l'outil pour ajouter une partie de polygone
qgis.utils.iface.actionAddPart().trigger()