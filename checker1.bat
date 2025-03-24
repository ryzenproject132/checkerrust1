@echo off
chcp 65001 >nul
title RadicalChecker
mode con: cols=80 lines=20

:menu
cls
echo ==============================
echo        RadicalChecker
echo ==============================
echo 1. Открыть LastActivityView
echo 2. Открыть ShellBag Analyzer
echo 3. Удалить скачанные файлы
echo 4. Информация
echo 5. Выход
echo ==============================
set /p choice=Введите номер и нажмите Enter: 

if "%choice%"=="1" (
    echo Скачиваю LastActivityView...
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.nirsoft.net/utils/lastactivityview.zip', 'lastactivityview.zip')"
    echo Распаковываю...
    powershell -Command "Expand-Archive -Path 'lastactivityview.zip' -DestinationPath '.\lastactivityview' -Force"
    echo Запускаю LastActivityView...
    if exist ".\lastactivityview\LastActivityView.exe" (
        start "" ".\lastactivityview\LastActivityView.exe"
    ) else (
        echo Ошибка! Файл не найден.
    )
    pause
    goto menu
)

if "%choice%"=="2" (
    echo Скачиваю ShellBag Analyzer...
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.nirsoft.net/utils/shellbaganalyzer.zip', 'shellbaganalyzer.zip')"
    echo Распаковываю...
    powershell -Command "Expand-Archive -Path 'shellbaganalyzer.zip' -DestinationPath '.\shellbaganalyzer' -Force"
    echo Запускаю ShellBag Analyzer...
    if exist ".\shellbaganalyzer\ShellBagAnalyzer.exe" (
        start "" ".\shellbaganalyzer\ShellBagAnalyzer.exe"
    ) else (
        echo Ошибка! Файл не найден.
    )
    pause
    goto menu
)

if "%choice%"=="3" (
    echo Удаляю скачанные файлы...
    rmdir /s /q lastactivityview 2>nul
    rmdir /s /q shellbaganalyzer 2>nul
    del lastactivityview.zip 2>nul
    del shellbaganalyzer.zip 2>nul
    echo Файлы удалены!
    pause
    goto menu
)

if "%choice%"=="4" (
    cls
    echo ========================================
    echo               ИНФОРМАЦИЯ
    echo ========================================
    echo Дискорд сервер: https://discord.gg/JYZcQcPm8K
    echo ВКонтакте: https://vk.com/club224294783
    echo Магазин: https://4532.gamestores.app/
    echo.
    echo Сделал: brtv
    echo.
    echo Программа была сделана для RadicalRust
    echo ========================================
    pause
    goto menu
)

if "%choice%"=="5" (
    echo Выход...
    exit
)

echo Ошибка! Неверный ввод.
pause
goto menu
