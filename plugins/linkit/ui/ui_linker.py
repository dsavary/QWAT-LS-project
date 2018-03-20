# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'ui/ui_linker.ui'
#
# Created: Mon Dec 15 09:22:20 2014
#      by: PyQt4 UI code generator 4.10.4
#
# WARNING! All changes made in this file will be lost!

from PyQt4 import QtCore, QtGui

try:
    _fromUtf8 = QtCore.QString.fromUtf8
except AttributeError:
    def _fromUtf8(s):
        return s

try:
    _encoding = QtGui.QApplication.UnicodeUTF8
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig, _encoding)
except AttributeError:
    def _translate(context, text, disambig):
        return QtGui.QApplication.translate(context, text, disambig)

class Ui_linker(object):
    def setupUi(self, linker):
        linker.setObjectName(_fromUtf8("linker"))
        linker.resize(275, 132)
        linker.setMaximumSize(QtCore.QSize(400, 150))
        self.dockWidgetContents = QtGui.QWidget()
        self.dockWidgetContents.setObjectName(_fromUtf8("dockWidgetContents"))
        self.gridLayout_3 = QtGui.QGridLayout(self.dockWidgetContents)
        self.gridLayout_3.setSpacing(3)
        self.gridLayout_3.setContentsMargins(0, 3, 3, 3)
        self.gridLayout_3.setObjectName(_fromUtf8("gridLayout_3"))
        self.dockFrame = QtGui.QFrame(self.dockWidgetContents)
        self.dockFrame.setFrameShape(QtGui.QFrame.StyledPanel)
        self.dockFrame.setFrameShadow(QtGui.QFrame.Raised)
        self.dockFrame.setObjectName(_fromUtf8("dockFrame"))
        self.gridLayout_2 = QtGui.QGridLayout(self.dockFrame)
        self.gridLayout_2.setMargin(3)
        self.gridLayout_2.setObjectName(_fromUtf8("gridLayout_2"))
        self.referencedFeatureLayout = QtGui.QWidget(self.dockFrame)
        self.referencedFeatureLayout.setObjectName(_fromUtf8("referencedFeatureLayout"))
        self.horizontalLayout_3 = QtGui.QHBoxLayout(self.referencedFeatureLayout)
        self.horizontalLayout_3.setSpacing(3)
        self.horizontalLayout_3.setMargin(0)
        self.horizontalLayout_3.setObjectName(_fromUtf8("horizontalLayout_3"))
        self.label_3 = QtGui.QLabel(self.referencedFeatureLayout)
        self.label_3.setObjectName(_fromUtf8("label_3"))
        self.horizontalLayout_3.addWidget(self.label_3)
        self.relationReferenceWidget = gui.QgsRelationReferenceWidget(self.referencedFeatureLayout)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.MinimumExpanding, QtGui.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.relationReferenceWidget.sizePolicy().hasHeightForWidth())
        self.relationReferenceWidget.setSizePolicy(sizePolicy)
        self.relationReferenceWidget.setOpenFormButtonVisible(False)
        self.relationReferenceWidget.setObjectName(_fromUtf8("relationReferenceWidget"))
        self.horizontalLayout_3.addWidget(self.relationReferenceWidget)
        self.gridLayout_2.addWidget(self.referencedFeatureLayout, 3, 0, 1, 1)
        self.referencingFeatureLayout = QtGui.QWidget(self.dockFrame)
        self.referencingFeatureLayout.setObjectName(_fromUtf8("referencingFeatureLayout"))
        self.horizontalLayout = QtGui.QHBoxLayout(self.referencingFeatureLayout)
        self.horizontalLayout.setSpacing(3)
        self.horizontalLayout.setMargin(0)
        self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
        self.label_2 = QtGui.QLabel(self.referencingFeatureLayout)
        self.label_2.setObjectName(_fromUtf8("label_2"))
        self.horizontalLayout.addWidget(self.label_2)
        self.referencingFeatureLineEdit = QtGui.QLineEdit(self.referencingFeatureLayout)
        self.referencingFeatureLineEdit.setReadOnly(True)
        self.referencingFeatureLineEdit.setObjectName(_fromUtf8("referencingFeatureLineEdit"))
        self.horizontalLayout.addWidget(self.referencingFeatureLineEdit)
        self.highlightReferencingFeatureButton = QtGui.QToolButton(self.referencingFeatureLayout)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(_fromUtf8(":/plugins/linkit/icons/highlight.svg")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.highlightReferencingFeatureButton.setIcon(icon)
        self.highlightReferencingFeatureButton.setObjectName(_fromUtf8("highlightReferencingFeatureButton"))
        self.horizontalLayout.addWidget(self.highlightReferencingFeatureButton)
        self.identifyReferencingFeatureButton = QtGui.QToolButton(self.referencingFeatureLayout)
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(_fromUtf8(":/plugins/linkit/icons/maptool.svg")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.identifyReferencingFeatureButton.setIcon(icon1)
        self.identifyReferencingFeatureButton.setCheckable(True)
        self.identifyReferencingFeatureButton.setObjectName(_fromUtf8("identifyReferencingFeatureButton"))
        self.horizontalLayout.addWidget(self.identifyReferencingFeatureButton)
        self.gridLayout_2.addWidget(self.referencingFeatureLayout, 2, 0, 1, 1)
        self.widget_2 = QtGui.QWidget(self.dockFrame)
        self.widget_2.setObjectName(_fromUtf8("widget_2"))
        self.horizontalLayout_2 = QtGui.QHBoxLayout(self.widget_2)
        self.horizontalLayout_2.setSpacing(3)
        self.horizontalLayout_2.setMargin(0)
        self.horizontalLayout_2.setObjectName(_fromUtf8("horizontalLayout_2"))
        self.label = QtGui.QLabel(self.widget_2)
        self.label.setObjectName(_fromUtf8("label"))
        self.horizontalLayout_2.addWidget(self.label)
        self.relationComboBox = QtGui.QComboBox(self.widget_2)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.MinimumExpanding, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.relationComboBox.sizePolicy().hasHeightForWidth())
        self.relationComboBox.setSizePolicy(sizePolicy)
        self.relationComboBox.setSizeAdjustPolicy(QtGui.QComboBox.AdjustToContents)
        self.relationComboBox.setObjectName(_fromUtf8("relationComboBox"))
        self.horizontalLayout_2.addWidget(self.relationComboBox)
        self.drawButton = QtGui.QToolButton(self.widget_2)
        icon2 = QtGui.QIcon()
        icon2.addPixmap(QtGui.QPixmap(_fromUtf8(":/plugins/linkit/icons/drawline.svg")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.drawButton.setIcon(icon2)
        self.drawButton.setCheckable(True)
        self.drawButton.setObjectName(_fromUtf8("drawButton"))
        self.horizontalLayout_2.addWidget(self.drawButton)
        self.gridLayout_2.addWidget(self.widget_2, 1, 0, 1, 1)
        self.gridLayout_3.addWidget(self.dockFrame, 0, 0, 2, 2)
        linker.setWidget(self.dockWidgetContents)

        self.retranslateUi(linker)
        QtCore.QMetaObject.connectSlotsByName(linker)

    def retranslateUi(self, linker):
        linker.setWindowTitle(_translate("linker", "Link It", None))
        self.label_3.setText(_translate("linker", "Referenced", None))
        self.label_2.setText(_translate("linker", "Referencing", None))
        self.highlightReferencingFeatureButton.setText(_translate("linker", "Delete", None))
        self.identifyReferencingFeatureButton.setText(_translate("linker", "Select", None))
        self.label.setText(_translate("linker", "Relation", None))
        self.drawButton.setToolTip(_translate("linker", "Draw connection arrows", None))
        self.drawButton.setText(_translate("linker", "Draw line", None))

from qgis import gui
import resources_rc
