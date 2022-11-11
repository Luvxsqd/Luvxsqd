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
Gui, Add, Text, x150 y26 cWhite center +BackgroundTrans vTextjd, Hotkey:
Gui, Add, DropDownList, x150 y40 vButtonChosse gChangeButton, MButton|LButton|RButton|XButton1|XButton2||CapsLock|Delete|Insert|Home|End|PgUp|PgDn|Up|Down|Left|Right||Numpad0|Numpad1|Numpad2|Numpad3|Numpad4|Numpad5|Numpad6|Numpad7|Numpad8|Numpad9|NumpadDot|NumLock|NumpadDiv|NumpadMult|NumpadAdd|NumpadSub|NumpadEnter|RAlt|LAlt|LShift|RShift|q|w|e|r|t|y|u|i|o|p|a|s|d|f|g|h|j|k|l|z|x|c|v|b|n|m|0|1|2|3|4|5|6|7|8|9|none

Gui, Show, W320 H100, Bind for Clumsy
return

ChangeButton:
{
	GuiControlGet, checkifnull,,ButtonChosse
	if checkifnull = none
	{
		if oldbutton = NULL
		{
			return
		}
		else
		{
			HotKey, %oldbutton%, Off
			return
		}
		return
	}
	if oldbutton = NULL
	{
		GuiControlGet, var,,ButtonChosse
		HotKey, ~%var%, StartLag
		oldbutton = %var%
	}
	else
	{
		HotKey, %oldbutton%, Off
		GuiControlGet, var,,ButtonChosse
		HotKey, ~%var%, StartLag
		oldbutton = %var%
	}
	return
}

return
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


StartLag:
{
	ControlClick, Button2, clumsy 0.4 v2
}
