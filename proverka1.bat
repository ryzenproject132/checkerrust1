@echo off
chcp 1251 >nul
title ����� ����� Rust ^| by brtv
setlocal EnableDelayedExpansion

:menu
cls
echo ========================================
echo        ����� ����� ��� RUST
echo        ��������� �������: brtv
echo ========================================
echo 1. ������ �������� (��� ����� � �����)
echo 2. ������� �������� (�������� �����)
echo 3. ������� �������� �����
echo 4. ����������
echo 5. �����
echo ========================================
echo.
choice /c 12345 /n /m "�������� ����� (1-������, 2-�������, 3-������� �����, 4-����������, 5-�����): "

if %errorlevel%==5 exit
if %errorlevel%==4 goto Info
if %errorlevel%==3 goto OpenFolders
if %errorlevel%==2 goto QuickScan
if %errorlevel%==1 goto FullScan

:OpenFolders
cls
echo �������� �������� �����...
start "" "%APPDATA%\Local"
start "" "%APPDATA%\Roaming"
start "" "%HOMEPATH%\Downloads"
start "" "%HOMEPATH%\Desktop"
start "" "C:\Windows\Temp"
start "" "%TEMP%"
start "" "C:\Program Files (x86)\Steam\steamapps\common\Rust"
start "" "C:\PerfLogs"

REM �������������� �����, ��� ����� ���������� ����
start "" "%LOCALAPPDATA%\Temp"
start "" "%LOCALAPPDATA%\Programs"
start "" "%LOCALAPPDATA%\VirtualStore"
start "" "%USERPROFILE%\AppData\Local\Programs"
start "" "%USERPROFILE%\AppData\LocalLow"
start "" "%USERPROFILE%\Saved Games"
start "" "%USERPROFILE%\Videos"
start "" "%USERPROFILE%\Music"

echo.
echo ��� �������� ����� �������!
echo ������� ����� �������, ����� ��������� � ����...
pause >nul
goto menu

:FullScan
cls
echo ����������� ������ ��������...
set "files=*omega* *omega free* *blume* *superiority* *exloader* *injector* *extreme injector* *alkadbypass* *esp* *macros* *phoenix*"
goto Scan

:QuickScan
cls
echo ����������� ������� ��������...
set "files=*superiority* *blume* *omega* *cheat* *macros* *exloader* *swiftsoft*"
goto Scan

:Scan
cls
echo ������ ������������...
for /l %%i in (1,1,100) do (
    echo %%i%%
    timeout /nobreak /t 1 >nul
)

cls
echo ����� ��������!
echo.

for /r C:\ %%i in (%files%) do echo �������: %%i

echo.
echo �������� ����� �������� �� �������������� �����...
for /l %%i in (1,1,100) do (
    echo %%i%%
    timeout /nobreak /t 1 >nul
)

for %%f in (%files%) do (
    if exist "%HOMEPATH%\Downloads\%%f" echo ������� � ���������: %%f
)

echo.
echo ������!
echo ������� ����� �������, ����� ��������� � ����...
pause >nul
goto menu  

:Info
cls
echo ========================================
echo               ����������
echo ========================================
echo ������� ������: https://discord.gg/JYZcQcPm8K
echo ���������: https://vk.com/club224294783
echo �������: https://4532.gamestores.app/
echo.
echo ��������� ���� ������� ��� RadicalRust
echo ========================================
echo ������� ����� �������, ����� ��������� � ����...
pause >nul
goto menu
