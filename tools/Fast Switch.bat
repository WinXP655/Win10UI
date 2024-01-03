@echo off
echo Fast user switch Control
echo Please choose an option:
echo 1. Disable fast user switch
echo 2. Enable fast user switch
set /p option="Enter your choice: "
if "%option%"=="1" goto disable
if "%option%"=="2" goto enable
echo Invalid choice. Please enter 1 or 2.
goto end

:disable
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AllowMultipleTSSessions /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LogonType /t REG_DWORD /d 1 /f
echo Fast user switch has been disabled.
goto end

:enable
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AllowMultipleTSSessions /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LogonType /t REG_DWORD /d 1 /f
echo Fast user switch has been enabled.
goto end

:end
echo Press any key to exit.
pause >nul