@echo off
chcp 65001 >nul
title HE THONG VAN NANG ULTRA PREMIUM
cls
:: Kich hoat engine mau sac ANSI bang ky tu ESC dac biet
for /f %%A in ('echo prompt \$E^|cmd') do set "E=%%A"
:menu
cls
echo.
echo %E%[95m    __  __ ___ _  _ _   _    ___  ___  _  _  ___     ___ _   _ %E%[0m
echo %E%[95m   ^|  \/  ^| __^| \^| ^| ^| ^| ^|  / __^|/ _ \^| \^| ^|/ __^|   ^|  _^| ^| ^| ^|%E%[0m
echo %E%[95m   ^| ^|\/^| ^| _^| .` ^| ^|_^| ^| ^| (__^| (_) ^| .` ^| (_ ^|   ^| _^| ^|_^| ^|%E%[0m
echo %E%[95m   ^|_^|  ^|_^|___^|_^|\_^|\___/   \___^|\___/^|_^|\_^|\___^|   ^|___^|___/%E%[0m
echo %E%[90m ───────────────────────────────────────────────────────────────%E%[0m
echo.
echo   %E%[92m[1]%E%[0m Mo nhanh cai dat Chuot (Mouse Properties)
echo.
echo   %E%[93m[2]%E%[0m Kich hoat sieu cong cu an (GOD MODE)
echo.
echo   %E%[96m[3]%E%[0m Active Windows va Office (MAS Script)
echo.
echo   %E%[95m[4]%E%[0m Active Internet Download Manager (IDM)
echo.
echo   %E%[94m[5]%E%[0m Khoi chay sieu tien ich WinUtil (CTT)
echo.
echo   %E%[91m[6]%E%[0m Doc hai va Go rac Windows (Win Debloat)
echo.
echo   %E%[95m[7]%E%[0m Chay Windows Utility Toolkit (GitHub Tool)
echo.
echo   %E%[92m[8]%E%[0m Quet don rac nho dem he thong (Clear Temp)
echo.
echo   %E%[93m[9]%E%[0m Hen gio tat may tinh tu dong (Shutdown Timer)
echo.
echo   %E%[91m[10]%E%[0m Quet va tu sua loi Windows (SFC Check)
echo.
echo   %E%[90m[11]%E%[0m Thoat chuong trinh an toan
echo.
echo %E%[90m ───────────────────────────────────────────────────────────────%E%[0m
echo.
set "chon="
set /p chon="%E%[94m [-] Nhap lua chon cua ban (1-11): %E%[0m"
if "%chon%"=="1" goto chuot
if "%chon%"=="2" goto godmode
if "%chon%"=="3" goto activewo
if "%chon%"=="4" goto activeidm
if "%chon%"=="5" goto winutil
if "%chon%"=="6" goto debloat
if "%chon%"=="7" goto open_toolbox
if "%chon%"=="8" goto donrac
if "%chon%"=="9" goto hengio
if "%chon%"=="10" goto sualoi
if "%chon%"=="11" exit
echo.
echo %E%[91m [!] Lua chon khong hop le, vui long nhap lai sau 2 giay...%E%[0m
timeout /t 2 >nul
goto menu
:chuot
echo.
echo %E%[92m [+] Dang goi truc tiep Mouse Properties...%E%[0m
start "" "Mouse_Properties.bat"
timeout /t 1 >nul
goto menu
:godmode
echo.
echo %E%[93m [+] Dang mo thang giao dien GOD MODE...%E%[0m
start "" "GodMode.bat"
timeout /t 1 >nul
goto menu
:activewo
echo.
echo %E%[96m [+] Dang khoi chay cong cu active Windows/Office...%E%[0m
start "" "Active_Win_Office.bat"
timeout /t 1 >nul
goto menu
:activeidm
echo.
echo %E%[95m [+] Dang khoi chay cong cu bẻ khóa IDM...%E%[0m
start "" "Active_IDM.bat"
timeout /t 1 >nul
goto menu
:winutil
echo.
echo %E%[94m [+] Dang tai va khoi dong tool WinUtil...%E%[0m
start "" "WinUtil_Tool.bat"
timeout /t 1 >nul
goto menu
:debloat
echo.
echo %E%[91m [+] Dang tai va chay script Win Debloat...%E%[0m
start "" "Win_Debloat.bat"
timeout /t 1 >nul
goto menu
:open_toolbox
echo.
echo %E%[95m [+] Dang tai va khoi dong Windows Toolbox tu GitHub...%E%[0m
start "" "Windows_Toolbox.bat"
timeout /t 1 >nul
goto menu
:donrac
echo.
echo %E%[92m [+] Dang khoi chay tool don dep rac...%E%[0m
start "" "Don_Rac.bat"
timeout /t 1 >nul
goto menu
:hengio
echo.
set /p phut="Nhap so phut muon hen gio tat may (go 0 de HUY hen gio): "
if "%phut%"=="0" (
    shutdown -a
    echo %E%[91m [!] Da HUY lenh hen gio tat may!%E%[0m
) else (
    set /a giay=%phut%*60
    shutdown -s -t %giay%
    echo %E%[92m [+] May tinh se tu dong tat sau %phut% phut nữa!%E%[0m
)
timeout /t 3 >nul
goto menu
:sualoi
echo.
echo %E%[91m [+] Dang chay cong cu quet va sua file he thong (SFC)...%E%[0m
sfc /scannow
echo.
echo Quet hoan tat! Nhon Enter de quay lai menu.
pause >nul
goto menu