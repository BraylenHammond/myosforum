Ignore this just copy the command below and paste into your batch file 


@echo off
color 2f
title myOS 1.3.1

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
echo Version 1.3.1
echo New features
echo 1.Version now shows
echo 2.Lock bug fixes
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
echo 1) Lock
echo 2) Return to settings
set /p myaccountchoices=

if %myaccountchoices% == 1 goto myaccountlocker
if %myaccountchoices% == 2 goto menu

:myaccountlocker
echo Enter the 4 digit pin
set /p myAccountPin=Pin(Hint=9231)

if %myAccountPin% == 9231 goto success
if not %myAccountPin% == 9231 goto myaccountsettings

:success
cls
echo You successfully entered the pin!
pause




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
echo You are up-to-date do you want to restore 1.3?
echo 1) Yes
echo 2) No
set /p downgradechoice=

if %downgradechoice% == 1 goto downgrading
if %downgradechoice% == 2 goto menu

:downgrading 
cls
cd c:\Users\darre\OneDrive\Desktop\myOS-previous
move myOS1.2.bat C:\Users\darre\OneDrive\Desktop
move C:\Users\darre\OneDrive\Desktop\myOS1.3.bat c:\Users\darre\OneDrive\Desktop\myOS-previous