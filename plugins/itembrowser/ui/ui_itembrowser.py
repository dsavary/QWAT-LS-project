# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'ui/ui_itembrowser.ui'
#
# Created by: PyQt4 UI code generator 4.11.4
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

class Ui_itembrowser(object):
    def setupUi(self, itembrowser):
        itembrowser.setObjectName(_fromUtf8("itembrowser"))
        itembrowser.resize(270, 150)
        itembrowser.setWindowTitle(_fromUtf8("Item Browser"))
        self.dockWidgetContents = QtGui.QWidget()
        self.dockWidgetContents.setObjectName(_fromUtf8("dockWidgetContents"))
        self.gridLayout_3 = QtGui.QGridLayout(self.dockWidgetContents)
        self.gridLayout_3.setObjectName(_fromUtf8("gridLayout_3"))
        self.browseFrame = QtGui.QFrame(self.dockWidgetContents)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Preferred, QtGui.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.browseFrame.sizePolicy().hasHeightForWidth())
        self.browseFrame.setSizePolicy(sizePolicy)
        self.browseFrame.setAutoFillBackground(False)
        self.browseFrame.setFrameShape(QtGui.QFrame.StyledPanel)
        self.browseFrame.setObjectName(_fromUtf8("browseFrame"))
        self.gridLayout_2 = QtGui.QGridLayout(self.browseFrame)
        self.gridLayout_2.setMargin(6)
        self.gridLayout_2.setObjectName(_fromUtf8("gridLayout_2"))
        self.horizontalLayout = QtGui.QHBoxLayout()
        self.horizontalLayout.setObjectName(_fromUtf8("horizontalLayout"))
        self.currentPosLabel = QtGui.QLabel(self.browseFrame)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Maximum, QtGui.QSizePolicy.Preferred)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.currentPosLabel.sizePolicy().hasHeightForWidth())
        self.currentPosLabel.setSizePolicy(sizePolicy)
        self.currentPosLabel.setToolTip(_fromUtf8(""))
        self.currentPosLabel.setAccessibleName(_fromUtf8(""))
        self.currentPosLabel.setAccessibleDescription(_fromUtf8(""))
        self.currentPosLabel.setText(_fromUtf8("0/0"))
        self.currentPosLabel.setAlignment(QtCore.Qt.AlignCenter)
        self.currentPosLabel.setObjectName(_fromUtf8("currentPosLabel"))
        self.horizontalLayout.addWidget(self.currentPosLabel)
        self.previousButton = QtGui.QToolButton(self.browseFrame)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Minimum, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.previousButton.sizePolicy().hasHeightForWidth())
        self.previousButton.setSizePolicy(sizePolicy)
        self.previousButton.setMaximumSize(QtCore.QSize(21, 16777215))
        self.previousButton.setToolTip(_fromUtf8(""))
        self.previousButton.setAccessibleName(_fromUtf8(""))
        self.previousButton.setAccessibleDescription(_fromUtf8(""))
        self.previousButton.setText(_fromUtf8("<"))
        self.previousButton.setObjectName(_fromUtf8("previousButton"))
        self.horizontalLayout.addWidget(self.previousButton)
        self.listCombo = QtGui.QComboBox(self.browseFrame)
        self.listCombo.setToolTip(_fromUtf8(""))
        self.listCombo.setAccessibleName(_fromUtf8(""))
        self.listCombo.setAccessibleDescription(_fromUtf8(""))
        self.listCombo.setEditable(False)
        self.listCombo.setSizeAdjustPolicy(QtGui.QComboBox.AdjustToContents)
        self.listCombo.setObjectName(_fromUtf8("listCombo"))
        self.horizontalLayout.addWidget(self.listCombo)
        self.nextButton = QtGui.QToolButton(self.browseFrame)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Minimum, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.nextButton.sizePolicy().hasHeightForWidth())
        self.nextButton.setSizePolicy(sizePolicy)
        self.nextButton.setMaximumSize(QtCore.QSize(21, 16777215))
        self.nextButton.setToolTip(_fromUtf8(""))
        self.nextButton.setAccessibleName(_fromUtf8(""))
        self.nextButton.setAccessibleDescription(_fromUtf8(""))
        self.nextButton.setText(_fromUtf8(">"))
        self.nextButton.setObjectName(_fromUtf8("nextButton"))
        self.horizontalLayout.addWidget(self.nextButton)
        self.gridLayout_2.addLayout(self.horizontalLayout, 0, 0, 1, 1)
        self.horizontalLayout_2 = QtGui.QHBoxLayout()
        self.horizontalLayout_2.setObjectName(_fromUtf8("horizontalLayout_2"))
        self.panCheck = QtGui.QCheckBox(self.browseFrame)
        self.panCheck.setChecked(True)
        self.panCheck.setObjectName(_fromUtf8("panCheck"))
        self.horizontalLayout_2.addWidget(self.panCheck)
        self.scaleCheck = QtGui.QCheckBox(self.browseFrame)
        self.scaleCheck.setObjectName(_fromUtf8("scaleCheck"))
        self.horizontalLayout_2.addWidget(self.scaleCheck)
        spacerItem = QtGui.QSpacerItem(40, 20, QtGui.QSizePolicy.Expanding, QtGui.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.actionButton = QtGui.QToolButton(self.browseFrame)
        sizePolicy = QtGui.QSizePolicy(QtGui.QSizePolicy.Fixed, QtGui.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.actionButton.sizePolicy().hasHeightForWidth())
        self.actionButton.setSizePolicy(sizePolicy)
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap(_fromUtf8("../icons/action.svg")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.actionButton.setIcon(icon)
        self.actionButton.setPopupMode(QtGui.QToolButton.MenuButtonPopup)
        self.actionButton.setObjectName(_fromUtf8("actionButton"))
        self.horizontalLayout_2.addWidget(self.actionButton)
        self.editFormButton = QtGui.QToolButton(self.browseFrame)
        self.editFormButton.setToolTip(_fromUtf8(""))
        self.editFormButton.setAccessibleDescription(_fromUtf8(""))
        self.editFormButton.setText(_fromUtf8("..."))
        icon1 = QtGui.QIcon()
        icon1.addPixmap(QtGui.QPixmap(_fromUtf8("../icons/openform.svg")), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.editFormButton.setIcon(icon1)
        self.editFormButton.setObjectName(_fromUtf8("editFormButton"))
        self.horizontalLayout_2.addWidget(self.editFormButton)
        self.gridLayout_2.addLayout(self.horizontalLayout_2, 1, 0, 1, 1)
        self.gridLayout_3.addWidget(self.browseFrame, 0, 1, 1, 1)
        itembrowser.setWidget(self.dockWidgetContents)

        self.retranslateUi(itembrowser)
        QtCore.QMetaObject.connectSlotsByName(itembrowser)

    def retranslateUi(self, itembrowser):
        self.panCheck.setText(_translate("itembrowser", "pan", None))
        self.scaleCheck.setText(_translate("itembrowser", "scale", None))
        self.actionButton.setText(_translate("itembrowser", "...", None))

