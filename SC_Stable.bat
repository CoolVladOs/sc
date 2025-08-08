@echo off
title Please allow administrator previleges!
echo. >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] [%DATE%, %TIME%] SuperCleaner is starting... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] [%DATE%, %TIME%] Requesting administrator previleges... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Please allow administrator previleges!
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %Apply%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && echo [LOG] [%DATE%, %TIME%] Cannot get administrator access, exiting... >> C:\CoolVladOs\temp\sc4console\LOG.TXT && exit /B )
echo Initializing...
echo [LOG] [%DATE%, %TIME%] Detected administrator access! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
chcp 65001
title SuperCleaner v5.0 (Console Version)
echo Done!
cls
echo Пожалуйста подождите...
echo Идёт Создание временных файлов...
echo [LOG] [%DATE%, %TIME%] Creating temporary files... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cd C:\
mkdir CoolVladOs
cd CoolVladOs
mkdir temp
cd temp
mkdir sc4console
cd sc4console
echo [LOG] [%DATE%, %TIME%] Initializating... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Готово!
echo Скачивание необходимых файлов...
echo [LOG] [%DATE%, %TIME%] Downloading file from https://github.com/CoolVladOs/sc/raw/refs/heads/main/ExplorerBlurMica.dll >> C:\CoolVladOs\temp\sc4console\LOG.TXT
curl -o ExplorerBlurMica.dll https://github.com/CoolVladOs/sc/raw/refs/heads/main/ExplorerBlurMica.dll
echo [LOG] [%DATE%, %TIME%] File downloaded! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Готово! 1/2
echo [LOG] [%DATE%, %TIME%] Downloading file from https://github.com/CoolVladOs/sc/raw/refs/heads/main/SuperCleaner_AutorunScript.bat >> C:\CoolVladOs\temp\sc4console\LOG.TXT
curl -o SuperCleaner_AutorunScript.bat https://raw.githubusercontent.com/CoolVladOs/sc/refs/heads/main/SuperCleaner_AutorunScript.bat
echo Готово! 2/2
echo [LOG] [%DATE%, %TIME%] File downloaded! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Временные файлы успешно созданы!
echo Инициализация завершена!
echo [LOG] [%DATE%, %TIME%] Initialization completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
: mainmenu
cls
echo [LOG] [%DATE%, %TIME%] Going to MAINMENU >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Добро пожаловать в SuperCleaner. Выберите пункт.
echo.
echo 1.) Очистка ПК
echo 2.) Модификации Windows
echo 3.) Оптимизация ПК
echo 4.) О программе
echo 5.) ТГК Создателя
echo.
set /p var=Выберите вариант:
if %var%==1 goto clean
if %var%==2 goto modif
if %var%==3 goto optimiz
if %var%==4 goto about
if %var%==5 goto tgk
if %var%==мненадоелобытьнатуралом goto famboi

:modif
echo [LOG] [%DATE%, %TIME%] Going to MODIF >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Bluring Explorer... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Пожалуйста подождите...
cd C:\CoolVladOs\temp\sc4console
regsvr32 "%~dp0ExplorerBlurMica.dll"
echo [LOG] [%DATE%, %TIME%] Registred DLL >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Successful >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
cls
goto modif

: noblur
cls
echo [LOG] [%DATE%, %TIME%] Removing Explorer Blur... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Пожалуйста подождите...
cd C:\CoolVladOs\temp\sc4console
regsvr32 /u "%~dp0ExplorerBlurMica.dll"
echo [LOG] [%DATE%, %TIME%] Unregistred DLL >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Successful >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
cls
goto modif

: about
echo [LOG] [%DATE%, %TIME%] Going to ABOUT >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo SuperCleaner v5.0 (Console Version)
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
echo [LOG] [%DATE%, %TIME%] Going to CLEANMENU >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo 18.) Очистка с помощью утилиты DISM (Занимает много времени)
echo 19.) Советы по очистке памяти
echo 20.) Выход в главное меню
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
if %var%==18 goto dism
if %var%==19 goto tips
if %var%==20 goto mainmenu
if %var%== goto clean

: full
cls
echo [LOG] [%DATE%, %TIME%] Started FULL Clean >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Подождите...
del /q/f/s "%HOMEPATH%\Local Settings\Temp"
del /q/f/s %windir%\Logs
del /q /f /s C:\Windows\debug
del /q/f/s %windir%\SoftwareDistribution
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Windows\Explorer"
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Office\UnsavedFiles"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#0"
del /q /f /s "%userprofile%\AppData\Roaming\Telegram Desktop\tdata\user_data#1"
del /q /f /s %localappdata%\Local\AMD\DxCache\
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
del /q /f /s C:\Windows\ModemLogs
del /q /f /s C:\Windows\assembly\temp
del /q /f /s C:\Windows\assembly\tmp
del /q /f /s C:\Windows\assembly\NativeImages_v4.0.30319_64\Temp
del /q /f /s C:\Windows\assembly\NativeImages_v4.0.30319_32\Temp
del /q /f /s C:\Windows\assembly\NativeImages_v2.0.50727_64\Temp
del /q /f /s C:\Windows\assembly\NativeImages_v2.0.50727_32\Temp
del /q /f /s C:\Windows\Performance\WinSAT
del /q/f/s C:\Windows\Minidump
schtasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup"
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
del /q /f /s "C:\MSOCache\All Users"
del /q /f /s "C:\Program Files (x86)\Temp"
del /q /f /s "C:\Program Files\Temp"
del /q /f /s "C:\Program Files (x86)\Microsoft\Edge\Application\138.0.3351.121\Installer"
del /q /f /s "C:\Program Files\Microsoft\Edge\Application\138.0.3351.121\Installer"
del /q /f /s "C:\Program Files (x86)\Microsoft\Temp"
del /q /f /s "C:\Program Files\Microsoft\Temp"
del /q /f /s C:\ProgramData\Oracle\Java\installcache_x64
del /q /f /s C:\ProgramData\Oracle\Java\installcache
del /q /f /s C:\ProgramData\Oracle\Java\installcache_x86
del /q /f /s C:\ProgramData\Roblox\Downloads
del /q /f /s C:\$SysReset\Logs
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 8\Cache"
del /q /f /s C:\Windows\SystemTemp
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 9\Cache"
del /q /f /s "%LOCALAPPDATA%\Google\Chrome\User Data\Profile 10\Cache"
del /q/f/s "%USERPROFILE%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy\LocalState\EBWebView\Default\Code Cache\js"
del /q /f /s C:\Windows\security\logs
del /q /f /s C:\Windows\System32\DriverStore\FileRepository
cls 
echo Операция успешно завершена. (1/2)
echo [LOG] [%DATE%, %TIME%] Operation Completed (1/1) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Очистка с помощью утилиты DISM...
echo [LOG] [%DATE%, %TIME%] Starting DISM Cleanup... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo.
echo.
Dism.exe /online /Cleanup-Image /StartComponentCleanup
cls
echo Операция успешно завершена. (2/2)
echo [LOG] [%DATE%, %TIME%] Operation Completed (2/2) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
goto clean

: autostart
echo [LOG] [%DATE%, %TIME%] Copying Autostart Script... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Подождите...
copy C:\CoolVladOs\temp\sc4console\SuperCleaner_AutorunScript.bat "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup"
cls
echo Операция успешно завершена.
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
goto clean

: autostop
echo [LOG] [%DATE%, %TIME%] Removing startup script... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Cleaning... (localtemp) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
del /q/f/s %TEMP%\
del /q/f/s "%USERPROFILE%\Local Settings\Temp"
del /q/f/s %AppData%\Microsoft\Windows\Recent\
cls
echo Операция успешно завершена.
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
goto clean

: systemp
echo [LOG] [%DATE%, %TIME%] Cleaning... (systemp) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s %windir%\Temp
del /q /f /s C:\Windows\SystemTemp
del /q /f /s C:\Windows\debug
del /q /f /s C:\Windows\ModemLogs
del /q/f/s C:\Windows\Minidump
del /q /f /s C:\Windows\Performance\WinSAT
del C:\Windows\MEMORY.DMP
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: cash
echo [LOG] [%DATE%, %TIME%] Cleaning... (cash) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s "%HOMEPATH%\Local Settings\Temp"
del /q /f /s C:\Windows\assembly\temp
del /q /f /s C:\Windows\assembly\tmp
del /q /f /s C:\Windows\assembly\NativeImages_v4.0.30319_64\Temp
del /q /f /s C:\Windows\assembly\NativeImages_v4.0.30319_32\Temp
del /q /f /s C:\Windows\assembly\NativeImages_v2.0.50727_64\Temp
del /q /f /s C:\Windows\assembly\NativeImages_v2.0.50727_32\Temp
del /q /f /s C:\Windows\security\logs
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
del /q /f /s C:\$SysReset\Logs
del /q /f /s "C:\MSOCache\All Users"
del /q /f /s "C:\Program Files (x86)\Temp"
del /q /f /s "C:\Program Files\Temp"
del /q /f /s "C:\Program Files (x86)\Microsoft\Edge\Application\138.0.3351.121\Installer"
del /q /f /s "C:\Program Files\Microsoft\Edge\Application\138.0.3351.121\Installer"
del /q /f /s "C:\Program Files (x86)\Microsoft\Temp"
del /q /f /s "C:\Program Files\Microsoft\Temp"
del /q /f /s C:\ProgramData\Oracle\Java\installcache_x64
del /q /f /s C:\ProgramData\Oracle\Java\installcache
del /q /f /s C:\ProgramData\Oracle\Java\installcache_x86
del /q /f /s C:\ProgramData\Roblox\Downloads
del /q/f/s "%USERPROFILE%\AppData\Local\Packages\MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy\LocalState\EBWebView\Default\Code Cache\js"
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: updcenter
echo [LOG] [%DATE%, %TIME%] Cleaning... (updcenter) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s "C:\Windows\ServiceProfiles\NetworkService\AppData\Local\Microsoft\Windows\DeliveryOptimization"
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: browser
echo [LOG] [%DATE%, %TIME%] Cleaning... (browser) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: remotedsk
echo [LOG] [%DATE%, %TIME%] Cleaning... (remotedsk) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s "%userprofile%\AppData\Local\Microsoft\Terminal Server Client\Cache"
cls
echo Операция успешно завершена.
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
goto clean

: tg
echo [LOG] [%DATE%, %TIME%] Cleaning... (tg) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: recycle
echo [LOG] [%DATE%, %TIME%] Cleaning... (recycle) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: clipboard
echo [LOG] [%DATE%, %TIME%] Cleaning... (clipboard) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s %userprofile%\AppData\Local\Microsoft\Windows\Clipboard
cls
echo Операция успешно завершена.
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
timeout /t 2 >nul
goto clean

: famboi
echo [LOG] [%DATE%, %TIME%] вы нашли посхалко >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⡟⢸⣿⣿⣿⣄⠹⣷⠰⣤⣌⡙⢿⠏⣠⣿⣿⣿⣿⡇⣸ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⡇⣾⣿⣿⣿⣿⡧⠈⣀⣹⣿⣿⣦⣰⣿⣿⣿⣿⣿⡇⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⡇⢿⣿⣿⣿⣿⣶⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⣇⢸⣿⡿⠿⠿⠿⠿⣿⣿⣿⣿⠿⠟⠛⠛⢻⣿⣿⢁⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⡿⠿⠄⠻⡖⢰⡆⠀⠀⢸⣿⣿⡇⠀⠀⢸⡆⢹⠋⠁⠚⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣷⡀⠲⣶⡇⢺⣷⡀⢀⡾⠿⣿⣷⣀⣀⣾⠇⣸⡿⠋⣰⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⣿⢁⣦⣀⣡⣿⣿⡿⠿⠛⠻⠟⢻⣿⣥⣀⣽⣷⡌⢻⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⣿⣬⣭⣌⡙⠛⠿⣷⣶⣾⣿⣿⣿⠛⢛⣀⣬⣥⣤⣼⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⣿⣿⣿⣿⣿⣄⠒⢶⣾⣿⣿⣿⣿⣧⡈⢿⣿⣿⣿⣿⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⣿⣿⣿⣿⣿⡏⠐⢻⣿⣿⣿⣿⣿⣿⣧⠘⣿⣿⣿⣿⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo [LOG] ⣿⣿⣿⣿⣿⣿⣿⠃⣼⣿⣿⣿⣿⣿⣿⣿⡇⢻⣿⣿⣿⣿ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo. >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Cleaning... (prefetch) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s C:\Windows\Prefetch
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: java
echo [LOG] [%DATE%, %TIME%] Cleaning... (java) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q /f /s "%userprofile%\AppData\LocalLow\Sun\Java\Deployment\cache"
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: dmp
echo [LOG] [%DATE%, %TIME%] Cleaning... (dmp) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
del /q/f/s %USERPROFILE%\AppData\Local\CrashDumps
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: tips
echo [LOG] [%DATE%, %TIME%] Going to TIPS >> C:\CoolVladOs\temp\sc4console\LOG.TXT
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
echo [LOG] [%DATE%, %TIME%] Cleaning... (driver) >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Пожалуйста подождите
del /q /f /s "C:\ProgramData\NVIDIA Corporation\Downloader"
del /q /f /s C:\Windows\System32\DriverStore\FileRepository
del /q /f /s %localappdata%\Local\AMD\DxCache\
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: windows
echo [LOG] [%DATE%, %TIME%] Cleaning with cleanmgr... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Пожалуйста подождите...
cd C:\Windows\System32
echo [LOG] [%DATE%, %TIME%] Eecuting command: cleanmgr /autoclean >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cleanmgr /autoclean
echo [LOG] [%DATE%, %TIME%] Eecuting command: schtasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup" >> C:\CoolVladOs\temp\sc4console\LOG.TXT
schtasks.exe /Run /TN "\Microsoft\Windows\Servicing\StartComponentCleanup"
cd C:\CoolVladOs\Temp\sc4console
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean


: dism
echo [LOG] [%DATE%, %TIME%] Cleaning with DISM... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Очистка с помощью утилиты DISM (Может занят много времени)
echo.
echo.
echo.
echo [LOG] [%DATE%, %TIME%] Eecuting command: DISM.exe /online /Cleanup-Image /StartComponentCleanup >> C:\CoolVladOs\temp\sc4console\LOG.TXT
Dism.exe /online /Cleanup-Image /StartComponentCleanup
cls
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
echo Операция успешно завершена.
timeout /t 2 >nul
goto clean

: optimiz
echo [LOG] [%DATE%, %TIME%] Going to OPTIMIZ >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Выберите пункт.
echo.
echo 1.) Отключение всех ненужных служб
echo 2.) Отключить службу WSearch
echo 3.) Отключить службу обновления Яндекс Браузера (если есть)
echo 4.) Отключить службу RemoteAccess (для удалённого доступа к компьютеру)
echo 5.) Отключить службу RemoteRegistry (для удалённого изменения реестра)
echo 6.) Вернуться в главное меню
echo.
set /p var=Выберите вариант:
if %var%==1 goto autoserv
if %var%==2 goto wsearch
if %var%==3 goto yandexbrw
if %var%==4 goto remoteaccess
if %var%==5 goto remoteregistry
if %var%==6 goto mainmenu

: autoserv
echo [LOG] [%DATE%, %TIME%] Stopping Service WSearch ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Пожалуйста подождите...
echo.
net stop WSearch
echo [LOG] [%DATE%, %TIME%] Stopping Service YandexBrowserService ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
net stop YandexBrowserService
echo [LOG] [%DATE%, %TIME%] Stopping Service RemoteAccess ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
net stop RemoteAccess
echo [LOG] [%DATE%, %TIME%] Stopping Service RemoteRegistry ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
net stop RemoteRegistry
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto optimiz

: wsearch
echo [LOG] [%DATE%, %TIME%] Stopping Service WSearch ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
net stop WSearch
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto optimiz

: yandexbrw
echo [LOG] [%DATE%, %TIME%] Stopping Service YandexBrowserService ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
net stop YandexBrowserService
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto optimiz

: remoteaccess
echo [LOG] [%DATE%, %TIME%] Stopping Service RemoteAccess ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
net stop RemoteAccess
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto optimiz

: remoteregistry
echo [LOG] [%DATE%, %TIME%] Stopping Service RemoteRegistry ... >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
net stop RemoteRegistry
echo [LOG] [%DATE%, %TIME%] Operation completed! >> C:\CoolVladOs\temp\sc4console\LOG.TXT
cls
echo Операция успешно завершена.
timeout /t 2 >nul
goto optimiz
