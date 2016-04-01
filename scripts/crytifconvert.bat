@echo off

FOR /F "usebackq tokens=2,* skip=2" %%L IN (
    `reg query "HKEY_CURRENT_USER\SOFTWARE\Crytek\Settings" /v ENG_RootPath`
) DO SET CElocation=%%M

echo CryEngine install found at %CElocation%

SET RC=%CElocation%\Tools\rc\rc.exe

echo Current batch run is %0 %~dpnx0
echo Subject is %1 

cd %1

echo Current Directory is %cd%

echo CryEngine RC at %RC%
echo(
echo Converting Albedo Files!
%RC% *_diff.tif /userdialog

echo Converting Reflectivity Files!
%RC% *_spec.tif /userdialog
%RC% *_refl.tif /userdialog

echo Converting Normal Map Files!
%RC% *_ddna.tif /userdialog
%RC% *_ddn.tif /userdialog

:: pause  