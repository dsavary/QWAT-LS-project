IF NOT EXIST "%USERPROFILE%\.qgis2qwat" (
echo "copier les paramètres de base"
xcopy "\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\config_qgis\QGIS\*" "%USERPROFILE%\.qgis2qwat" /E /I /W
)ELSE (
echo "les paramètres ont déjà été copiés"
)
IF NOT EXIST "%USERPROFILE%\QGIS" (
echo "copie du fichier de projet"
xcopy "\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\qwat_lausanne3d_saisie_218_v2.*" "%USERPROFILE%\QGIS" /I /W
)ELSE (
echo " le projet est déjà existant en local"
)
Pause