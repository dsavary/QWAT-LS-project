# -*- coding: utf-8 -*-

from qgis.utils import iface
from qgis.core import (QgsMapLayerRegistry,QgsDataSourceURI)

def editmultilayer():
    for layer in QgsMapLayerRegistry.instance().mapLayers().values():
        uri = QgsDataSourceURI(layer.source())
        name = uri.schema() + "." + uri.table()
        if name in ["qwat_od.pipe","qwat_od.valve", "qwat_od.part" , "qwat_od.hydrant", "qwat_od.subscriber", "qwat_od.leak"]:
            if not layer.isEditable():
                layer.startEditing()
        else:
            pass
editmultilayer()