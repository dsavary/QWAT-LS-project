from math import cos, sin, pi

# params
circle_x = 0
circle_y = 0
circle_r = 2
tolerance = .1  # tolerance for Filter Rectangle around center of circle in the feature request
arc_angle = 360  # 360=full circle, arc if lesser. Returns the feature if > 90

# create memory layer
epsg = iface.mapCanvas().mapRenderer().destinationCrs().authid()
layer = QgsVectorLayer("LineString?crs=%s&field=id:string&index=yes" % epsg, "Circle", "memory")
QgsMapLayerRegistry.instance().addMapLayer(layer)

# uncomment to test on another layer
#layer = QgsMapLayerRegistry.instance().mapLayer("pipe20130612142848065")

# add a circle as a line in the layer
f = QgsFeature()
fields = layer.dataProvider().fields()
f.setFields(fields)
f["id"] = "test"

f.setGeometry(QgsGeometry().fromPolyline([QgsPoint(circle_x + circle_r * cos(pi/180*a),
                                                   circle_y + circle_r * sin(pi/180*a))
              for a in range(0, arc_angle, 3)]))
layer.dataProvider().addFeatures([f])
layer.updateExtents()
layer.setCacheImage(None)
layer.triggerRepaint()

# select and print id of selected features
features = []
featReq = QgsFeatureRequest()
box = QgsRectangle(circle_x-tolerance, circle_y-tolerance, circle_x+tolerance, circle_y+tolerance)
featReq.setFilterRect(box)
featReq.setFlags(QgsFeatureRequest.ExactIntersect)
f = QgsFeature()
vliter = layer.getFeatures(featReq)
while vliter.nextFeature(f):
    print f["id"]
    pass




