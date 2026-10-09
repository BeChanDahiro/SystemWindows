@echo off
chcp 65001 >nul
title HE THONG VAN NANG ULTRA PREMIUM
setlocal enabledelayedexpansion
cls

:menu
cls
echo.
echo    __  __ ___ _  _ _   _    ___  ___  _  _  ___     ___ _   _
echo   |  \/  | __| \| | | | |  / __|/ _ \| \| |/ __|   |  _| | | |
echo   | |\/| | _| .` | |_| | |_| | (__| (_) | .` | (_ |   | _| |_| |
echo   |_|  |_|___|_|\_|\___/   \___|\___/|_|\_|\___|   |___|___/
echo -----------------------------------------------------------------
echo.
echo   [1] Mo nhanh cai dat Chuot (Mouse Properties)
echo.
echo   [2] Kich hoat sieu cong cu an (GOD MODE)
echo.
echo   [3] Active Windows va Office (MAS Script)
echo.
echo   [4] Active Internet Download Manager (IDM)
echo.
echo   [5] Khoi chay sieu tien ich WinUtil (CTT)
echo.
echo   [6] Don dep & Go rac Windows (Win Debloat)
echo.
echo   [7] Chay Windows Utility Toolkit (GitHub Tool)
echo.
echo   [8] Quet don rac he thong tam (Clear Temp)
echo.
echo   [9] Hen gio tat may tu dong (Shutdown Timer)
echo.
echo   [10] Quet & tu sua loi he thong (SFC Check)
echo.
echo   [11] Thoat chuong trinh an toan
echo.
echo -----------------------------------------------------------------
echo.
set "chon="
set /p "chon=Nhap lua chon cua ban (1-11): "

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
if "%chon%"=="11" goto thoat

echo.
echo [!] Lua chon khong hop le, nhap lai sau 2 giay...
timeout /t 2 >nul
goto menu

:chuot
echo.
echo [+] Dang mo Mouse Properties...
if exist "Mouse_Properties.bat" (call "Mouse_Properties.bat") else (echo [!] Thieu file Mouse_Properties.bat!)
goto menu

:godmode
echo.
echo [+] Dang mo GOD MODE...
if exist "GodMode.bat" (call "GodMode.bat") else (echo [!] Thieu file GodMode.bat!)
goto menu

:activewo
echo.
echo [+] Dang khoi chay MAS Script...
if exist "Active_Win_Office.bat" (call "Active_Win_Office.bat") else (echo [!] Thieu file Active_Win_Office.bat!)
goto menu

:activeidm
echo.
echo [+] Dang khoi chay kich hoat IDM...
if exist "Active_IDM.bat" (call "Active_IDM.bat") else (echo [!] Thieu file Active_IDM.bat!)
goto menu

:winutil
echo.
echo [+] Dang khoi chay WinUtil (CTT)...
if exist "WinUtil_Tool.bat" (call "WinUtil_Tool.bat") else (echo [!] Thieu file WinUtil_Tool.bat!)
goto menu

:debloat
echo.
echo [+] Dang khoi chay Win Debloat...
if exist "Win_Debloat.bat" (call "Win_Debloat.bat") else (echo [!] Thieu file Win_Debloat.bat!)
goto menu

:open_toolbox
echo.
echo [+] Dang khoi chay Windows Toolbox...
if exist "Windows_Toolbox.bat" (call "Windows_Toolbox.bat") else (echo [!] Thieu file Windows_Toolbox.bat!)
goto menu

:donrac
echo.
echo [+] Dang khoi chay don rac...
if exist "Don_Rac.bat" (call "Don_Rac.bat") else (echo [!] Thieu file Don_Rac.bat!)
goto menu

:hengio
echo.
set "phut="
set /p "phut=Nhap so phut (go 0 de HUY): "
if "%phut%"=="0" (
    shutdown -a >nul 2>&1
    echo [OK] Da HUY hen gio tat may!
) else (
    set /a giay=phut*60
    shutdown -s -t !giay!
    echo [OK] May se tat sau %phut% phut!
)
timeout /t 2 >nul
goto menu

:sualoi
echo.
echo [+] Dang quet & sua loi he thong...
echo   - Khoi phuc hinh anh he thong (DISM)...
dism /online /cleanup-image /restorehealth
echo   - Kiem tra tep he thong (SFC)...
sfc /scannow
echo.
echo [OK] Hoan tat! Nhan Enter de quay lai.
pause >nul
goto menu

:thoat
cls
echo Tam biet! Cam on da su dung =33
timeout /t 1 >nul
endlocal
exit /b
