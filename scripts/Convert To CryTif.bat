@echo off

FOR /F "usebackq tokens=2,* skip=2" %%L IN (
    `reg query "HKEY_CURRENT_USER\SOFTWARE\Crytek\Settings" /v ENG_RootPath`
) DO SET CElocation=%%M

echo CryEngine install found at %CElocation%

SET RC=%CElocation%\Tools\rc\rc.exe
echo CryEngine RC at %RC%

echo Current Directory is %cd%
echo Current batch run is %0 %~dpnx0
echo Subject is %1 

SET TARGET=%1

echo(
echo Converting File!
%RC% %TARGET% /userdialog
