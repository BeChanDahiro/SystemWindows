@echo off
chcp 65001 >nul
title HỆ THỐNG VẠN NĂNG ULTRA PREMIUM
setlocal enabledelayedexpansion
cls

:: === SỬA: Cách lấy ký tự ESC ĐƠN GIẢN & CHẮC CHẮN nhất ===
for /f %%a in ('prompt $E^|cmd /k prompt $E^|findstr /r $') do set "E=%%a"
if not defined E (
    for /f %%a in ('echo ') do set "E=%%a"
)
:: Nếu vẫn không được → dùng giá trị trực tiếp
if not defined E (
    set "E="
)
:: Kiểm tra cuối — vẫn không được thì bỏ màu
if not defined E (
    set "E=["
    set "NOCOLOR=1"
)

:menu
cls
echo.
if not defined NOCOLOR (
echo !E![95m    __  __ ___ _  _ _   _    ___  ___  _  _  ___     ___ _   _ !E![0m
echo !E![95m   |  \/  | __| \| | | | |  / __|/ _ \| \| |/ __|   |  _| | | |!E![0m
echo !E![95m   | |\/| | _| .` | |_| | |_| | (__| (_) | .` | (_ |   | _| |_| |!E![0m
echo !E![95m   |_|  |_|___|_|\_|\___/   \___|\___/|_|\_|\___|   |___|___/!E![0m
echo !E![90m -----------------------------------------------------------------!E![0m
) else (
echo    __  __ ___ _  _ _   _    ___  ___  _  _  ___     ___ _   _
echo   |  \/  | __| \| | | | |  / __|/ _ \| \| |/ __|   |  _| | | |
echo   | |\/| | _| .` | |_| | |_| | (__| (_) | .` | (_ |   | _| |_| |
echo   |_|  |_|___|_|\_|\___/   \___|\___/|_|\_|\___|   |___|___/
echo -----------------------------------------------------------------
)
echo.
if not defined NOCOLOR (
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
) else (
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
)
echo.
set "chon="
set /p "chon=Nhap lua chon cua ban (1-11): "

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
if not defined NOCOLOR (
echo !E![91m [!] Lua chon khong hop le, vui long nhap lai sau 2 giay...!E![0m
) else (
echo [!] Lua chon khong hop le, vui long nhap lai sau 2 giay...
)
timeout /t 2 >nul
goto menu

:chuot
echo.
if not defined NOCOLOR (
echo !E![92m [+] Dang mo Mouse Properties...!E![0m
) else (
echo [+] Dang mo Mouse Properties...
)
if exist "Mouse_Properties.bat" (call "Mouse_Properties.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file Mouse_Properties.bat!!E![0m) else (echo [!] Thieu file Mouse_Properties.bat!)
)
goto menu

:godmode
echo.
if not defined NOCOLOR (
echo !E![93m [+] Dang mo GOD MODE...!E![0m
) else (
echo [+] Dang mo GOD MODE...
)
if exist "GodMode.bat" (call "GodMode.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file GodMode.bat!!E![0m) else (echo [!] Thieu file GodMode.bat!)
)
goto menu

:activewo
echo.
if not defined NOCOLOR (
echo !E![96m [+] Dang khoi chay MAS Script...!E![0m
) else (
echo [+] Dang khoi chay MAS Script...
)
if exist "Active_Win_Office.bat" (call "Active_Win_Office.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file Active_Win_Office.bat!!E![0m) else (echo [!] Thieu file Active_Win_Office.bat!)
)
goto menu

:activeidm
echo.
if not defined NOCOLOR (
echo !E![95m [+] Dang khoi chay kich hoat IDM...!E![0m
) else (
echo [+] Dang khoi chay kich hoat IDM...
)
if exist "Active_IDM.bat" (call "Active_IDM.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file Active_IDM.bat!!E![0m) else (echo [!] Thieu file Active_IDM.bat!)
)
goto menu

:winutil
echo.
if not defined NOCOLOR (
echo !E![94m [+] Dang khoi chay WinUtil (CTT)...!E![0m
) else (
echo [+] Dang khoi chay WinUtil (CTT)...
)
if exist "WinUtil_Tool.bat" (call "WinUtil_Tool.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file WinUtil_Tool.bat!!E![0m) else (echo [!] Thieu file WinUtil_Tool.bat!)
)
goto menu

:debloat
echo.
if not defined NOCOLOR (
echo !E![91m [+] Dang khoi chay Win Debloat...!E![0m
) else (
echo [+] Dang khoi chay Win Debloat...
)
if exist "Win_Debloat.bat" (call "Win_Debloat.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file Win_Debloat.bat!!E![0m) else (echo [!] Thieu file Win_Debloat.bat!)
)
goto menu

:open_toolbox
echo.
if not defined NOCOLOR (
echo !E![95m [+] Dang khoi chay Windows Toolbox...!E![0m
) else (
echo [+] Dang khoi chay Windows Toolbox...
)
if exist "Windows_Toolbox.bat" (call "Windows_Toolbox.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file Windows_Toolbox.bat!!E![0m) else (echo [!] Thieu file Windows_Toolbox.bat!)
)
goto menu

:donrac
echo.
if not defined NOCOLOR (
echo !E![92m [+] Dang khoi chay don rac...!E![0m
) else (
echo [+] Dang khoi chay don rac...
)
if exist "Don_Rac.bat" (call "Don_Rac.bat") else (
if not defined NOCOLOR (echo !E![91m [!] Thieu file Don_Rac.bat!!E![0m) else (echo [!] Thieu file Don_Rac.bat!)
)
goto menu

:hengio
echo.
set "phut="
set /p "phut=Nhap so phut (go 0 de HUY): "
if "%phut%"=="0" (
    shutdown -a >nul 2>&1
    if not defined NOCOLOR (
    echo !E![92m [OK] Da HUY hen gio tat may!!E![0m
    ) else (
    echo [OK] Da HUY hen gio tat may!
    )
) else (
    set /a giay=phut*60
    shutdown -s -t !giay!
    if not defined NOCOLOR (
    echo !E![92m [OK] May se tat sau %phut% phut!!E![0m
    ) else (
    echo [OK] May se tat sau %phut% phut!
    )
)
timeout /t 2 >nul
goto menu

:sualoi
echo.
if not defined NOCOLOR (
echo !E![91m [+] Dang quet & sua loi he thong...!E![0m
echo !E![90m   - Khoi phuc hinh anh he thong (DISM)...!E![0m
) else (
echo [+] Dang quet & sua loi he thong...
echo   - Khoi phuc hinh anh he thong (DISM)...
)
dism /online /cleanup-image /restorehealth
if not defined NOCOLOR (
echo !E![90m   - Kiem tra tep he thong (SFC)...!E![0m
) else (
echo   - Kiem tra tep he thong (SFC)...
)
sfc /scannow
echo.
if not defined NOCOLOR (
echo !E![92m [OK] Hoan tat! Nhan Enter de quay lai.!E![0m
) else (
echo [OK] Hoan tat! Nhan Enter de quay lai.
)
pause >nul
goto menu

:thoat
cls
if not defined NOCOLOR (
echo !E![92m Tam biet! Cam on da su dung =33!E![0m
) else (
echo Tam biet! Cam on da su dung =33
)
timeout /t 1 >nul
endlocal
exit /b
