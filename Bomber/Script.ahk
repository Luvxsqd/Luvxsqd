﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
/*
		Skrypt stworzony przez Weke...
		jezeli chcesz to sobie go edytuj
		lecz pamietaj kto jest orginalnym
		autorem tego skryptu <3 milego
	
Kanal autora: https://www.youtube.com/c/weke77
Remastered by Luvxsqd
*/


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
oldbutton = NULL
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%"

IfWinExist, clumsy 0.4 v2
{

}
else
{
	msgbox, Restart pc
	Exitapp
	return
}
Gui, Color, c282828, Verdana
Gui, Font, s8, Calisto MT

Gui, Add, Picture, x25 Y25 gBestSettingsButton Group,%a_workingdir%\button.png
Gui, Add, Text, x55 y43 cWhite center +BackgroundTrans vBestSettingsButtontext, Settings

Gui, Show, W150 H100, Bind for Clumsy
return

^b::
{
	ControlClick, Button2, clumsy 0.4 v2
}

BestSettingsButton:
{
	Control, Check, , Button8, clumsy 0.4 v2
	sleep 50
	Control, Check, , Button11, clumsy 0.4 v2
	sleep 50
	Control, Check, , Button14, clumsy 0.4 v2
	sleep 50
	Control, Check, , Button18, clumsy 0.4 v2
	sleep 50
	ControlSetText, Edit3, 4500, clumsy 0.4 v2
	sleep 50
	ControlSetText, Edit4, 100, clumsy 0.4 v2
	sleep 50
	ControlSetText, Edit5, 4000, clumsy 0.4 v2
	sleep 50
	ControlSetText, Edit6, 100, clumsy 0.4 v2
	sleep 50
	ControlSetText, Edit8, 100, clumsy 0.4 v2
	sleep 50
	return
}

return

ExitApptray:
{
	Exitapp
	return
}

GuiClose:
ExitApp
return
ControlClick, Button2, clumsy 0.4 v2