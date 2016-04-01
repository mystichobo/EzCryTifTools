@echo off
echo EzCryTifTools
echo Windows CryTif Conversion Scripts!
echo By Jake Oliver
echo www.mystichobo.com
echo https://github.com/mystichobo
echo(
echo(

echo Current Directory is %~dp0
echo User Profile at %USERPROFILE%
SET INSTALLDIR=%~dp0

echo(
echo(
echo Adding context menu registry keys!
reg add "HKEY_CLASSES_ROOT\Directory\shell\crytifconvert" /t REG_SZ /d "Convert Textures to CryTif" /f
reg add "HKEY_CLASSES_ROOT\Directory\shell\crytifconvert\command" /t REG_SZ /d ""%INSTALLDIR%scripts\crytifconvert.bat" "%%1"" /f

echo(
echo(
echo Adding "Send To" Shortcut!
copy "%INSTALLDIR%scripts\Convert To CryTif.bat" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\SendTo"

echo(
echo(
echo Installation Complete!
pause