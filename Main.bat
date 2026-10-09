@echo off
title HE THONG VAN NANG
cls

:menu
cls
echo.
echo ==============================================
echo     HE THONG VAN NANG ULTRA PREMIUM
echo ==============================================
echo.
echo   [1] Mouse Properties
echo   [2] GOD MODE
echo   [3] Active Windows ,Office
echo   [4] Active IDM
echo   [5] WinUtil CTT
echo   [6] Win Debloat
echo   [7] Windows Toolbox
echo   [8] Clear Temp Files
echo   [9] Shutdown Timer
echo   [10] SFC Check
echo   [11] Exit
echo.
echo ==============================================
echo.

set "chon="
set /p "chon=Nhap lua chon (1-11): "

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
echo Lua chon khong hop le!
pause
goto menu

:chuot
echo.
echo Dang mo Mouse Properties...
if exist "Mouse_Properties.bat" (call "Mouse_Properties.bat") else (echo [!] Khong tim thay file Mouse_Properties.bat)
pause
goto menu

:godmode
echo.
echo Dang mo GOD MODE...
if exist "GodMode.bat" (call "GodMode.bat") else (echo [!] Khong tim thay file GodMode.bat)
pause
goto menu

:activewo
echo.
echo Dang chay MAS Script...
if exist "Active_Win_Office.bat" (call "Active_Win_Office.bat") else (echo [!] Khong tim thay file Active_Win_Office.bat)
pause
goto menu

:activeidm
echo.
echo Dang kich hoat IDM...
if exist "Active_IDM.bat" (call "Active_IDM.bat") else (echo [!] Khong tim thay file Active_IDM.bat)
pause
goto menu

:winutil
echo.
echo Dang chay WinUtil...
if exist "WinUtil_Tool.bat" (call "WinUtil_Tool.bat") else (echo [!] Khong tim thay file WinUtil_Tool.bat)
pause
goto menu

:debloat
echo.
echo Dang chay Win Debloat...
if exist "Win_Debloat.bat" (call "Win_Debloat.bat") else (echo [!] Khong tim thay file Win_Debloat.bat)
pause
goto menu

:open_toolbox
echo.
echo Dang chay Windows Toolbox...
if exist "Windows_Toolbox.bat" (call "Windows_Toolbox.bat") else (echo [!] Khong tim thay file Windows_Toolbox.bat)
pause
goto menu

:donrac
echo.
echo Dang don rac...
if exist "Don_Rac.bat" (call "Don_Rac.bat") else (echo [!] Khong tim thay file Don_Rac.bat)
pause
goto menu

:hengio
echo.
set "phut="
set /p "phut=Nhap so phut (nhap 0 de huy): "
if "%phut%"=="0" (
    shutdown -a >nul 2>&1
    echo Da huy lenh tat may!
) else (
    set /a giay=phut*60
    shutdown -s -t %giay%
    echo May se tat sau %phut% phut!
)
pause
goto menu

:sualoi
echo.
echo Dang kiem tra he thong...
dism /online /cleanup-image /restorehealth
sfc /scannow
echo.
echo Hoan tat!
pause
goto menu

:thoat
cls
echo Tam biet!
timeout /t 2 >nul
exit /b