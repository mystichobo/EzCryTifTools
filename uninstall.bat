@echo off
echo EzCryTifTools
echo Windows CryTif Conversion Scripts!
echo By Jake Oliver
echo www.mystichobo.com
echo https://github.com/mystichobo
echo(
echo(

echo Current Install Directory is %~dp0
echo User Profile at %USERPROFILE%
SET INSTALLDIR=%~dp0

echo(
echo(
echo Removing context menu registry keys!
reg delete "HKEY_CLASSES_ROOT\Directory\shell\crytifconvert" 

echo(
echo(
echo Removing "Send To" Shortcut!
del "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\SendTo\Convert To CryTif.bat"

echo(
echo(
echo Uninstallation Complete!
pause