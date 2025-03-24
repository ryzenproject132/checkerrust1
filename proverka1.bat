@echo off
chcp 1251 >nul
title Поиск читов Rust ^| by brtv
setlocal EnableDelayedExpansion

:menu
cls
echo ========================================
echo        ПОИСК ЧИТОВ ДЛЯ RUST
echo        Программа сделана: brtv
echo ========================================
echo 1. Полная проверка (все папки и файлы)
echo 2. Быстрая проверка (ключевые файлы)
echo 3. Открыть основные папки
echo 4. Информация
echo 5. Выйти
echo ========================================
echo.
choice /c 12345 /n /m "Выберите режим (1-Полная, 2-Быстрая, 3-Открыть папки, 4-Информация, 5-Выход): "

if %errorlevel%==5 exit
if %errorlevel%==4 goto Info
if %errorlevel%==3 goto OpenFolders
if %errorlevel%==2 goto QuickScan
if %errorlevel%==1 goto FullScan

:OpenFolders
cls
echo Открываю основные папки...
start "" "%APPDATA%\Local"
start "" "%APPDATA%\Roaming"
start "" "%HOMEPATH%\Downloads"
start "" "%HOMEPATH%\Desktop"
start "" "C:\Windows\Temp"
start "" "%TEMP%"
start "" "C:\Program Files (x86)\Steam\steamapps\common\Rust"
start "" "C:\PerfLogs"

REM Дополнительные папки, где могут находиться читы
start "" "%LOCALAPPDATA%\Temp"
start "" "%LOCALAPPDATA%\Programs"
start "" "%LOCALAPPDATA%\VirtualStore"
start "" "%USERPROFILE%\AppData\Local\Programs"
start "" "%USERPROFILE%\AppData\LocalLow"
start "" "%USERPROFILE%\Saved Games"
start "" "%USERPROFILE%\Videos"
start "" "%USERPROFILE%\Music"

echo.
echo Все основные папки открыты!
echo Нажмите любую клавишу, чтобы вернуться в меню...
pause >nul
goto menu

:FullScan
cls
echo Выполняется полная проверка...
set "files=*omega* *omega free* *blume* *superiority* *exloader* *injector* *extreme injector* *alkadbypass* *esp* *macros* *phoenix*"
goto Scan

:QuickScan
cls
echo Выполняется быстрая проверка...
set "files=*superiority* *blume* *omega* *cheat* *macros* *exloader* *swiftsoft*"
goto Scan

:Scan
cls
echo Запуск сканирования...
for /l %%i in (1,1,100) do (
    echo %%i%%
    timeout /nobreak /t 1 >nul
)

cls
echo Поиск завершен!
echo.

for /r C:\ %%i in (%files%) do echo Найдено: %%i

echo.
echo Проверка папки загрузок на подозрительные файлы...
for /l %%i in (1,1,100) do (
    echo %%i%%
    timeout /nobreak /t 1 >nul
)

for %%f in (%files%) do (
    if exist "%HOMEPATH%\Downloads\%%f" echo Найдено в загрузках: %%f
)

echo.
echo Готово!
echo Нажмите любую клавишу, чтобы вернуться в меню...
pause >nul
goto menu  

:Info
cls
echo ========================================
echo               ИНФОРМАЦИЯ
echo ========================================
echo Дискорд сервер: https://discord.gg/JYZcQcPm8K
echo ВКонтакте: https://vk.com/club224294783
echo Магазин: https://4532.gamestores.app/
echo.
echo Программа была сделана для RadicalRust
echo ========================================
echo Нажмите любую клавишу, чтобы вернуться в меню...
pause >nul
goto menu
