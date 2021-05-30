@echo off
color 2f
title myOS.bat

:bootscreen
cls
echo Loading...
timeout 10
goto loginscreen

:loginscreen
cls
set /p PassInput=Password:
if %PassInput% == abc123 goto menu
if not %PassInput% == abc123 goto loginscreen

:menu
cls
echo Welcome
echo choose a option(by number)
echo 1) Settings
echo 2) Clock
echo 3) Log Out
echo 4) Shut Down
echo 5) Updater
set /p MenuChoice=

if %MenuChoice% == 1 goto settings
if %MenuChoice% == 2 goto clock
if %MenuChoice% == 3 goto loginscreen
if %MenuChoice% == 4 exit
if %MenuChoice% == 5 goto updater

:settings
cls
echo myUser
echo 1) myAccount
echo 2) General
echo 3) Return to menu
set /p SettingsChoice=

if %SettingsChoice% == 1 goto myaccountsettings
if %SettingsChoice% == 2 goto general
if %SettingsChoice% == 3 goto menu

:myaccountsettings
cls
echo Not done yet - come back later
pause
goto settings

:general
cls
echo 1) backlight on
echo 2) backlight off
echo 3) return to settings
set /p generalchoicesettings=

if %generalchoicesettings% == 1 color 0f
if %generalchoicesettings% == 2 color 2f
if %generalchoicesettings% == 3 goto settings


:clock
cls
echo Current time is %time%
echo Current date is %date%
pause
goto menu

:updater
cls
echo Checking for os updates...
timeout 10
echo Updates found! here is the update
echo myOS 1.3
echo 1) Install
echo 2) Ignore
set /p UpdateChoice=

if %UpdateChoice% == 1 goto updating
if %UpdateChoice% == 2 goto menu

:updating
cls
cd c:\Users\darre\OneDrive\Desktop\myOS-previous
move myOS1.2.bat myOS-previous
echo Updating myOS to 1.3 1.5GB 5 minutes remaining...
timeout 300
echo Update complete - will open in new window