# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ "Fonction d'initialisation Python".
Voici un exemple à suivre:
"""
from qgis.PyQt.QtWidgets import QWidget
from qgis.utils import iface
from PyQt4.QtGui import QLineEdit, QComboBox, QCheckBox, QMessageBox, QDialog

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    #control = dialog.findChild(QWidget, "MyLineEdit")
    for w in iface.mainWindow().findChildren(QDialog):
        if w.metaObject().className() == 'QgsAttributeDialog':
            print "1"
            for ww in w.findChildren(QComboBox):
                print "combo"
                print ww
                print ww.property('Field')
                if ww.property('Field') and ww.property('FieldAlias'):
                    print "combo2"
                    if ww.property('Field') == 'diameter':
                        ww.addItem('333')
                        print "ok"