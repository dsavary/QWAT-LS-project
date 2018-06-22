# -*- coding: utf-8 -*-

from qgis.utils import iface
from qgis.core import QgsFeatureRequest

# définition des variables
layerid = sys.var[0]
fid_parent = sys.var[1]

layer = QgsMapLayerRegistry.instance().mapLayer(layerid)
if layer:
    req = QgsFeatureRequest(fid_parent)
    feat = None
    for f in layer.getFeatures(req):
        feat = f
    if feat:
        iface.openFeatureForm(layer,feat)
    else:
        QtGui.QMessageBox.information(None, "Attention", u"cette objet ne trouve pas de relation parent - enfant, ID : " + str(fid_parent))
else:
    QtGui.QMessageBox.information(None, "Attention", u"La table parent indiquée  n''existe pas, ID : " + str(layerid))