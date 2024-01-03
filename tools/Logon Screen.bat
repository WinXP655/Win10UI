@echo off
echo Logon Screen Control
echo Please choose an option:
echo 1. Disable the logon screen
echo 2. Enable the logon screen
set /p option="Enter your choice: "
if "%option%"=="1" goto disable
if "%option%"=="2" goto enable
echo Invalid choice. Please enter 1 or 2.
goto end

:disable
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LogonType /t REG_DWORD /d 0 /f
echo The logon screen has been disabled.
goto end

:enable
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v LogonType /t REG_DWORD /d 1 /f
echo The logon screen has been enabled.
goto end

:end
echo Press any key to exit.
pause >nul