@echo off
chcp 65001 >nul
title HỆ THỐNG VẠN NĂNG ULTRA PREMIUM
setlocal enabledelayedexpansion
cls

:: Tạo ký tự ESC cho màu ANSI — tương thích mọi Windows
for /f "delims=" %%a in ('"prompt $E & for %%b in (1) do rem"') do @set "E=%%a"

:menu
cls
echo.
echo !E![95m    __  __ ___ _  _ _   _    ___  ___  _  _  ___     ___ _   _ !E![0m
echo !E![95m   |  \/  | __| \| | | | |  / __|/ _ \| \| |/ __|   |  _| | | |!E![0m
echo !E![95m   | |\/| | _| .` | |_| | |_| | (__| (_) | .` | (_ |   | _| |_| |!E![0m
echo !E![95m   |_|  |_|___|_|\_|\___/   \___|\___/|_|\_|\___|   |___|___/!E![0m
echo !E![90m -----------------------------------------------------------------!E![0m
echo.
echo   !E![92m[1]!E![0m Mo nhanh cai dat Chuot (Mouse Properties)
echo.
echo   !E![93m[2]!E![0m Kich hoat sieu cong cu an (GOD MODE)
echo.
echo   !E![96m[3]!E![0m Active Windows va Office (MAS Script)
echo.
echo   !E![95m[4]!E![0m Active Internet Download Manager (IDM)
echo.
echo   !E![94m[5]!E![0m Khoi chay sieu tien ich WinUtil (CTT)
echo.
echo   !E![91m[6]!E![0m Don dep & Go rac Windows (Win Debloat)
echo.
echo   !E![95m[7]!E![0m Chay Windows Utility Toolkit (GitHub Tool)
echo.
echo   !E![92m[8]!E![0m Quet don rac he thong tam (Clear Temp)
echo.
echo   !E![93m[9]!E![0m Hen gio tat may tu dong (Shutdown Timer)
echo.
echo   !E![91m[10]!E![0m Quet & tu sua loi he thong (SFC Check)
echo.
echo   !E![90m[11]!E![0m Thoat chuong trinh an toan
echo.
echo !E![90m -----------------------------------------------------------------!E![0m
echo.
set "chon="
set /p "chon=!E![94m [-] Nhap lua chon cua ban (1-11): !E![0m"

:: Xoa khoang trang thua
for /f "delims= " %%i in ("%chon%") do set "chon=%%i"

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
echo !E![91m [!] Lua chon khong hop le, vui long nhap lai sau 2 giay...!E![0m
timeout /t 2 >nul
goto menu

:chuot
echo.
echo !E![92m [+] Dang mo Mouse Properties...!E![0m
if exist "Mouse_Properties.bat" (call "Mouse_Properties.bat") else (echo !E![91m [!] Thieu file Mouse_Properties.bat! !E![0m)
goto menu

:godmode
echo.
echo !E![93m [+] Dang mo GOD MODE...!E![0m
if exist "GodMode.bat" (call "GodMode.bat") else (echo !E![91m [!] Thieu file GodMode.bat! !E![0m)
goto menu

:activewo
echo.
echo !E![96m [+] Dang khoi chay MAS Script...!E![0m
if exist "Active_Win_Office.bat" (call "Active_Win_Office.bat") else (echo !E![91m [!] Thieu file Active_Win_Office.bat! !E![0m)
goto menu

:activeidm
echo.
echo !E![95m [+] Dang khoi chay kich hoat IDM...!E![0m
if exist "Active_IDM.bat" (call "Active_IDM.bat") else (echo !E![91m [!] Thieu file Active_IDM.bat! !E![0m)
goto menu

:winutil
echo.
echo !E![94m [+] Dang khoi chay WinUtil (CTT)...!E![0m
if exist "WinUtil_Tool.bat" (call "WinUtil_Tool.bat") else (echo !E![91m [!] Thieu file WinUtil_Tool.bat! !E![0m)
goto menu

:debloat
echo.
echo !E![91m [+] Dang khoi chay Win Debloat...!E![0m
if exist "Win_Debloat.bat" (call "Win_Debloat.bat") else (echo !E![91m [!] Thieu file Win_Debloat.bat! !E![0m)
goto menu

:open_toolbox
echo.
echo !E![95m [+] Dang khoi chay Windows Toolbox...!E![0m
if exist "Windows_Toolbox.bat" (call "Windows_Toolbox.bat") else (echo !E![91m [!] Thieu file Windows_Toolbox.bat! !E![0m)
goto menu

:donrac
echo.
echo !E![92m [+] Dang khoi chay don rac...!E![0m
if exist "Don_Rac.bat" (call "Don_Rac.bat") else (echo !E![91m [!] Thieu file Don_Rac.bat! !E![0m)
goto menu

:hengio
echo.
set "phut="
set /p "phut=!E![93m [?] Nhap so phut (go 0 de HUY): !E![0m"
if "%phut%"=="0" (
    shutdown -a >nul 2>&1
    echo !E![92m [OK] Da HUY hen gio tat may!!E![0m
) else (
    set /a giay=phut*60
    shutdown -s -t !giay!
    echo !E![92m [OK] May se tat sau %phut% phut!!E![0m
)
timeout /t 2 >nul
goto menu

:sualoi
echo.
echo !E![91m [+] Dang quet & sua loi he thong...!E![0m
echo !E![90m   - Khoi phuc hinh anh he thong (DISM)...!E![0m
dism /online /cleanup-image /restorehealth
echo !E![90m   - Kiem tra tep he thong (SFC)...!E![0m
sfc /scannow
echo.
echo !E![92m [OK] Hoan tat! Nhan Enter de quay lai.!E![0m
pause >nul
goto menu

:thoat
cls
echo !E![92m Tam biet! Cam on da su dung =33!E![0m
timeout /t 1 >nul
endlocal
exit /b
