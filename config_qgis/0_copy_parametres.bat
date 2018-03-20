SET NOM_PROJET=%1
rem SET NOM_PROJET=qwat_lausanne3d_saisie_218_v2

echo "copier les paramètres de base"
xcopy "\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\config_qgis\QGIS\*" "%USERPROFILE%\.qgis2qwat" /D /E /I

echo "copie du fichier de projet"
xcopy "\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\%NOM_PROJET%.qgs" "%USERPROFILE%\QGIS" /D /I