IF NOT EXIST "%USERPROFILE%\.qgis2qwat" (
echo "copier les param�tres de base"
xcopy "\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\config_qgis\QGIS\*" "%USERPROFILE%\.qgis2qwat" /E /I /W
)ELSE (
echo "les param�tres ont d�j� �t� copi�s"
)
IF NOT EXIST "%USERPROFILE%\QGIS" (
echo "copie du fichier de projet"
xcopy "\\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\qwat_lausanne3d_saisie_218_v2.*" "%USERPROFILE%\QGIS" /I /W
)ELSE (
echo " le projet est d�j� existant en local"
)
Pause