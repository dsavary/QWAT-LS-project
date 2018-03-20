@echo on
call "C:\Program Files\QGIS 2.18\bin\o4w_env.bat"
@echo on
set "OSGEO4W_ROOT=C:\Program Files\QGIS 2.18"
path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
rem Set VSI cache to be used as buffer, see #6448
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt4\plugins
rem start "QGIS" /B "%OSGEO4W_ROOT%"\bin\qgis-bin.exe %*
rem set QGIS_UDIR=C:\Temp\QGIS
set QGIS_UDIR=%USERPROFILE%\.qgis2qwat
echo %OSGEO4W_ROOT%
echo %QGIS_UDIR%
start "QGIS" /B "%OSGEO4W_ROOT%"\bin\qgis-bin.exe --configpath "%QGIS_UDIR%" --optionspath "%QGIS_UDIR%" %USERPROFILE%\QGIS\qwat_lausanne3d_saisie_218_v2.qgs
rem start "QGIS" /B "%OSGEO4W_ROOT%"\bin\qgis-bin.exe --configpath "%QGIS_UDIR%" --optionspath "%QGIS_UDIR%" \\geodata.lausanne.ch\data\QGIS_projet\eauservice\qwat_lausanne\qwat_lausanne3d_saisie_218_v2.qgs
