@echo off
echo Please allow administrator previleges!
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %Apply%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo Initializing...
chcp 65001
title SuperCleaner v4.1 BETA 2 (Console Version)
echo Done!
cls
echo Пожалуйста подождите...
echo Идёт Создание временных файлов...
cd C:\
mkdir CoolVladOs
cd CoolVladOs
mkdir temp
cd temp
mkdir sc4console
cd sc4console
echo supercleaner4console >> C:\CoolVladOs\temp\sc4console\data
echo Готово!
echo Скачивание необходимых файлов...
curl -o ExplorerBlurMica.dll https://github.com/CoolVladOs/sc/raw/refs/heads/main/ExplorerBlurMica.dll
echo Готово! 1/2
curl -o SuperCleaner_AutorunScript.bat https://raw.githubusercontent.com/CoolVladOs/sc/refs/heads/main/SuperCleaner_AutorunScript.bat
echo Готово! 2/2
echo Временные файлы успешно созданы!
echo Инициализация завершена!
cls
: mainmenu
cls
echo Добро пожаловать в SuperCleaner. Выберите пункт.
echo.
echo 1.) Очистка ПК
echo 2.) Модификации Windows
echo 3.) О программе
echo 4.) ТГК Создателя
echo.
set /p var=Выберите вариант:
if %var%==1 goto clean
if %var%==2 goto modif
if %var%==3 goto about
if %var%==4 goto tgk
if %var%==мненадоелобытьнатуралом goto famboi

:modif
cls
echo Выберите пункт.
echo.
echo 1.) Включить размытие проводника (Только Windows 11)
echo 2.) Выключить размытие проводника (Только Windows 11)
echo 3.) Выход в главное меню
echo.
set /p var=Выберите вариант:
if %var%==1 goto blur
if %var%==2 goto noblur
if %var%==3 goto mainmenu

: blur
cls
echo Пожалуйста подождите...
cd C:\CoolVladOs\temp\sc4console
regsvr32 "%~dp0ExplorerBlurMica.dll"
echo Перезапускаем explorer.exe
taskkill /F /IM explorer.exe >nul
cd C:\
cd Windows
start explorer.exe
cd C:\
cd CoolVladOs
cd temp
cd sc4console
echo Операция успешно завершена.
timeout /t 2 >nul
cls
goto modif

: noblur
cls
echo Пожалуйста подождите...
cd C:\CoolVladOs\temp\sc4console
regsvr32 /u "%~dp0ExplorerBlurMica.dll"
echo Перезапускаем explorer.exe
taskkill /F /IM explorer.exe >nul
cd C:\
cd Windows
start explorer.exe
cd C:\
cd CoolVladOs
cd temp
cd sc4console
echo Операция успешно завершена.
timeout /t 2 >nul
cls
goto modif

: about
cls
echo SuperCleaner v4.1 (BETA 2) (Console Version)
echo Maded By CoolVladOs
echo.
echo https://t.me/CoolVladOs
echo.
echo ----------------
echo.
echo GitHub Page: https://github.com/CoolVladOs/SuperCleaner.git
echo.
echo.
pause
cls
goto mainmenu

: clean
cls
echo Выберите пункт.
echo.
echo 1.) Полная очистка временных файлов
echo 2.) Включить автоматическую очистку при запуске системы
echo 3.) Выключить автоматическую очистку при запуске системы
echo 4.) Очистить папку Temp
echo 5.) Очистить системную папку Temp
echo 6.) Удалить логи и кэши приложений
echo 7.) Удалить кэш центра обновлений Windows
echo 8.) Удалить кэши браузеров
echo 9.) Удалить кэш удалённого рабочего стола
echo 10.) Удалить кэш Telegram
echo 11.) Очистить корзину
echo 12.) Очистить кэш буфера обмена
echo 13.) Очистить кэш Prefetch
echo 14.) Очистить кэш Java
echo 15.) Очистить дампы памяти
echo 16.) Очистить кэш драйверов
echo 17.) Очистить память с помощью стандартных средств Windows (cleanmgr)
echo 18.) Советы по очистке памяти
echo 19.) Выход в главное меню
echo.
set /p var=Выберите вариант:
if %var%==1 goto full
if %var%==2 goto autostart
if %var%==3 goto autostop
if %var%==4 goto localtemp
if %var%==5 goto systemp
if %var%==6 goto cash
if %var%==7 goto updcenter
if %var%==8 goto browser
if %var%==9 goto remotedsk
if %var%==10 goto tg
if %var%==11 goto recycle
if %var%==12 goto clipboard
if %var%==13 goto prefetch
if %var%==14 goto java
if %var%==15 goto dmp
if %var%==16 goto driver
if %var%==17 goto windows
if %var%==18 goto tips
if %var%==19 goto mainmenu

: full
cls
echo Подождите...
del /q/f/s "%HOMEPATH%\Local Settings\Temp"
del /q/f/s %windir%\Logs
del /q/f/s %windir%\SoftwareDistribution
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Explorer"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Office\UnsavedFiles"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#0"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#1"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#2"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#3"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#4"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#5"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#6"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#7"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#8"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#9"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#10"
del /q/f/s %windir%\Temp
del /q/f/s C:\Windows\Minidump
del C:\Windows\MEMORY.DMP
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Terminal Server Client\Cache"
del /q/f/s %TEMP%\
del /q/f/s "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization"
del /q/f/s "%localappdata%\Microsoft\Edge\User Data\Default\Cache"
del /q/f/s "%localappdata%\Microsoft\Windows\INetCache\IE"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\INetCache"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
del /q/f/s "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache"
del /q/f/s "%userprofile%\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache"
del /q/f/s "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\папка профиля\cache2"
del /q/f/s "%userprofile%\AppData\Local\Opera Software\Opera Stable"
del /q /f /s %systemdrive%\$Recycle.bin
del /q /f /s D:\$Recycle.bin
del /q /f /s H:\$Recycle.bin
del /q /f /s A:\$Recycle.bin
del /q /f /s B:\$Recycle.bin
del /q /f /s G:\$Recycle.bin
del /q /f /s I:\$Recycle.bin
del /q /f /s J:\$Recycle.bin
del /q /f /s K:\$Recycle.bin
del /q /f /s L:\$Recycle.bin
del /q /f /s M:\$Recycle.bin
del /q /f /s N:\$Recycle.bin
del /q /f /s O:\$Recycle.bin
del /q /f /s P:\$Recycle.bin
del /q /f /s Y:\$Recycle.bin
del /q /f /s Z:\$Recycle.bin
del /q /f /s U:\$Recycle.bin
del /q /f /s F:\$Recycle.bin
del /q /f /s Q:\$Recycle.bin
del /q/f/s %AppData%\Microsoft\Windows\Recent\
del /q/f/s %userprofile%\AppData\Local\Microsoft\Windows\FileHistory
del /q/f/s %userprofile%\AppData\Local\Microsoft\Windows\Clipboard
del /q/f/s C:\Windows\Prefetch
del /q /f /s "%userprofile%\AppData\LocalLow\Sun\Java\Deployment\cache"
del /q/f/s C:\Windows\Logs
del /q/f/s %USERPROFILE%\AppData\Local\Microsoft\OneDrive\setup
del /q/f/s %USERPROFILE%\AppData\Local\CrashDumps
del /q/f/s "%USERPROFILE%\AppData\Local\Packages\Microsoft.SkypeApp_kzf8qxf38zg5c\LocalCache\Roaming\Microsoft\Skype for Store\Cache\Cache_Data"
del /q/f/s %AppData%\vlc\art
del /q/f/s %USERPROFILE%\AppData\Local\TeamViewer\EdgeBrowserControl\Persistent\518004909B1945429DCFDF9727D8D545\EBWebView\Default\Cache\Cache_Data
del /q/f/s %USERPROFILE%\AppData\Local\TeamViewer\BuddyListCache
del /q /f /s "C:\ProgramData\NVIDIA Corporation\Downloader"
del /q /f /s C:\Windows\System32\DriverStore\FileRepository
cleanmgr /autoclean
del /q /f /s C:\Intel\Logs
del /q /f /s C:\Program Files\Google\Chrome\Application\138.0.7204.184\Installer
del /q/f/s %USERPROFILE%\AppData\Local\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TempState
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 1\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 3\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 4\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 5\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 6\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 7\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 8\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 9\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 10\Cache"
del /q/f/s "%USERPROFILE%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy\LocalState\EBWebView\Default\Code Cache\js"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: autostart
cls
echo Подождите...
copy C:\CoolVladOs\temp\sc4console\SuperCleaner_AutorunScript.bat "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: autostop
cd "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
del SuperCleaner_AutorunScrupt.bat
cd C:\
cd CoolVladOs
cd temp
cd sc4console
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: localtemp
cls
del /q/f/s %TEMP%\
del /q/f/s "%USERPROFILE%\Local Settings\Temp"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: systemp
del /q/f/s %windir%\Temp
del /q/f/s C:\Windows\Minidump
del C:\Windows\MEMORY.DMP
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: cash
del /q/f/s "%HOMEPATH%\Local Settings\Temp"
del /q/f/s %windir%\Logs
C:\Program Files\Google\Chrome\Application\138.0.7204.184\Installer
del /q/f/s %windir%\SoftwareDistribution
del /q /f /s C:\Intel\Logs
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Explorer"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Office\UnsavedFiles"
del /q/f/s C:\Windows\Logs
del /q/f/s %USERPROFILE%\AppData\Local\Microsoft\OneDrive\setup
del /q/f/s "%USERPROFILE%\AppData\Local\Packages\Microsoft.SkypeApp_kzf8qxf38zg5c\LocalCache\Roaming\Microsoft\Skype for Store\Cache\Cache_Data"
del /q/f/s %AppData%\vlc\art
del /q/f/s C:\ProgramData\BlueStacks_nxt\Logs
del /q/f/s %USERPROFILE%\AppData\Local\TeamViewer\EdgeBrowserControl\Persistent\518004909B1945429DCFDF9727D8D545\EBWebView\Default\Cache\Cache_Data
del /q/f/s %USERPROFILE%\AppData\Local\TeamViewer\BuddyListCache
del /q/f/s %USERPROFILE%\AppData\Local\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TempState
del /q/f/s "%USERPROFILE%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy\LocalState\EBWebView\Default\Code Cache\js"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: updcenter
del /q/f/s "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: browser
del /q/f/s "%localappdata%\Microsoft\Edge\User Data\Default\Cache"
del /q/f/s "%localappdata%\Microsoft\Windows\INetCache\IE"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\INetCache"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
del /q/f/s "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache"
del /q/f/s "%userprofile%\AppData\Local\Yandex\YandexBrowser\User Data\Default\Cache"
del /q/f/s "%userprofile%\AppData\Local\Mozilla\Firefox\Profiles\папка профиля\cache2"
del /q/f/s "%userprofile%\AppData\Local\Opera Software\Opera Stable"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 1\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 2\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 3\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 4\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 5\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 6\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 7\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 8\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 9\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 10\Cache"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: remotedsk
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Terminal Server Client\Cache"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: tg
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#0"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#1"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#2"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#3"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#4"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#5"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#6"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#7"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#8"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#9"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#10"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: recycle
del /q /f /s %systemdrive%\$Recycle.bin
del /q /f /s D:\$Recycle.bin
del /q /f /s H:\$Recycle.bin
del /q /f /s A:\$Recycle.bin
del /q /f /s B:\$Recycle.bin
del /q /f /s G:\$Recycle.bin
del /q /f /s I:\$Recycle.bin
del /q /f /s J:\$Recycle.bin
del /q /f /s K:\$Recycle.bin
del /q /f /s L:\$Recycle.bin
del /q /f /s M:\$Recycle.bin
del /q /f /s N:\$Recycle.bin
del /q /f /s O:\$Recycle.bin
del /q /f /s P:\$Recycle.bin
del /q /f /s Y:\$Recycle.bin
del /q /f /s Z:\$Recycle.bin
del /q /f /s U:\$Recycle.bin
del /q /f /s F:\$Recycle.bin
del /q /f /s Q:\$Recycle.bin
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: clipboard
del /q/f/s %userprofile%\AppData\Local\Microsoft\Windows\Clipboard
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: famboi
cls
echo Тебе серьёзно надоело быть натуралом??
echo.
pause
cls
echo Ну тогда...
echo Ты теперь фембой!
color d7
title FemboyCleaner
echo.
echo ⣿⡟⢸⣿⣿⣿⣄⠹⣷⠰⣤⣌⡙⢿⠏⣠⣿⣿⣿⣿⡇⣸
echo ⣿⡇⣾⣿⣿⣿⣿⡧⠈⣀⣹⣿⣿⣦⣰⣿⣿⣿⣿⣿⡇⣿
echo ⣿⡇⢿⣿⣿⣿⣿⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿
echo ⣿⣇⢸⣿⡿⠿⠿⠿⠿⣿⣿⣿⣿⠿⠟⠛⠛⢻⣿⣿⢁⣿
echo ⡿⠿⠄⠻⡖⢰⡆⠀⠀⢸⣿⣿⡇⠀⠀⢸⡆⢹⠋⠁⠚⣿
echo ⣷⡀⠲⣶⡇⢺⣷⡀⢀⡾⠿⣿⣷⣀⣀⣾⠇⣸⡿⠋⣰⣿
echo ⣿⣿⢁⣦⣀⣡⣿⣿⡿⠿⠛⠻⠟⢻⣿⣥⣀⣽⣷⡌⢻⣿
echo ⣿⣿⣬⣭⣌⡙⠛⠿⣷⣶⣾⣿⣿⣿⠛⢛⣀⣬⣥⣤⣼⣿
echo ⣿⣿⣿⣿⣿⣿⣄⠒⢶⣾⣿⣿⣿⣿⣧⡈⢿⣿⣿⣿⣿⣿
echo ⣿⣿⣿⣿⣿⣿⡏⠐⢻⣿⣿⣿⣿⣿⣿⣧⠘⣿⣿⣿⣿⣿
echo ⣿⣿⣿⣿⣿⣿⣿⠃⣼⣿⣿⣿⣿⣿⣿⣿⡇⢻⣿⣿⣿⣿
echo.
echo.
pause
color 07
cls
goto mainmenu

: prefetch
del /q/f/s C:\Windows\Prefetch
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: java
del /q /f /s "%userprofile%\AppData\LocalLow\Sun\Java\Deployment\cache"
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: dmp
del /q/f/s %USERPROFILE%\AppData\Local\CrashDumps
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: tips
cls
echo Если вы хотите как можно больше очистить память, то вы можете попробовать сделать это:
echo 1. Зайдите в загрузки и удалите ненужные файлы и установочные файлы.
echo 2. Удалите приложения, которыми вы не пользуетесь.
echo 3. Посмотрите папки пользователя (такие, как Изображения, документы, видео и.т.д.) и удалите ненужные файлы в них.
echo.
echo.
pause

goto clean

: хули ты код смотришь???

: driver
cls
echo Пожалуйста подождите
del /q /f /s "C:\ProgramData\NVIDIA Corporation\Downloader"
del /q /f /s C:\Windows\System32\DriverStore\FileRepository
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: windows
cls
echo Пожалуйста подождите...
cd C:\Windows\System32
cleanmgr /autoclean
cd C:\CoolVladOs\Temp\sc4console
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

