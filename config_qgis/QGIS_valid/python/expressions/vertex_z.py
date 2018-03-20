"""
Define new functions using @qgsfunction. feature and parent must always be the
last args. Use args=-1 to pass a list of values as arguments
"""

from qgis.core import *
from qgis.gui import *

@qgsfunction(args='auto', group='qwat function')
def nb_vertex_z(geometry, feature, parent):
	geo = geometry.geometry()
	tot = geo.numPoints()
	alt = 0
	for i in range(geo.numPoints()):
		if geo.zAt(i) > 0:
			alt += 1
	return alt
