cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %Apply%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
del /q/f/s %AppData%\Microsoft\Windows\Recent\
del /q/f/s %userprofile%\AppData\Local\Microsoft\Windows\FileHistory
del /q/f/s %TEMP%\
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
del /q/f/s "%HOMEPATH%\Local Settings\Temp"
del /q/f/s %windir%\Logs
del /q/f/s %windir%\Temp 
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
exit
