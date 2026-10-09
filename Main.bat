@echo off
chcp 65001 >nul
title HỆ THỐNG VẠN NĂNG ULTRA PREMIUM
cls

:: Khởi tạo mã màu ANSI
for /f %%A in ('echo prompt $E^| cmd') do set "E=%%A"

:menu
cls
echo.
echo %E%[95m    __  __ ___ _  _ _   _    ___  ___  _  _  ___     ___ _   _ %E%[0m
echo %E%[95m   |  \/  | __| \| | | | |  / __|/ _ \| \| |/ __|   |  _| | | |%E%[0m
echo %E%[95m   | |\/| | _| .` | |_| | |_| | (__| (_) | .` | (_ |   | _| |_| |%E%[0m
echo %E%[95m   |_|  |_|___|_|\_|\___/   \___|\___/|_|\_|\___|   |___|___/%E%[0m
echo %E%[90m ───────────────────────────────────────────────────────────────%E%[0m
echo.
echo   %E%[92m[1]%E%[0m Mở nhanh cài đặt Chuột (Mouse Properties)
echo.
echo   %E%[93m[2]%E%[0m Kích hoạt siêu công cụ ẩn (GOD MODE)
echo.
echo   %E%[96m[3]%E%[0m Active Windows và Office (MAS Script)
echo.
echo   %E%[95m[4]%E%[0m Active Internet Download Manager (IDM)
echo.
echo   %E%[94m[5]%E%[0m Khởi chạy siêu tiện ích WinUtil (CTT)
echo.
echo   %E%[91m[6]%E%[0m Dọn dẹp & Gỡ rác Windows (Win Debloat)
echo.
echo   %E%[95m[7]%E%[0m Chạy Windows Utility Toolkit (GitHub Tool)
echo.
echo   %E%[92m[8]%E%[0m Quét dọn rác hệ thống tạm (Clear Temp)
echo.
echo   %E%[93m[9]%E%[0m Hẹn giờ tắt máy tự động (Shutdown Timer)
echo.
echo   %E%[91m[10]%E%[0m Quét & tự sửa lỗi hệ thống (SFC Check)
echo.
echo   %E%[90m[11]%E%[0m Thoát chương trình an toàn
echo.
echo %E%[90m ───────────────────────────────────────────────────────────────%E%[0m
echo.
set "chon="
set /p "chon=%E%[94m [-] Nhập lựa chọn của bạn (1-11): %E%[0m"

:: Xóa khoảng trắng thừa nếu có
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
if /i "%chon%"=="11" goto thoat

echo.
echo %E%[91m [!] Lựa chọn không hợp lệ, vui lòng nhập lại sau 2 giây...%E%[0m
timeout /t 2 >nul
goto menu

:chuot
echo.
echo %E%[92m [+] Đang mở Mouse Properties...%E%[0m
call "Mouse_Properties.bat"
goto menu

:godmode
echo.
echo %E%[93m [+] Đang mở GOD MODE...%E%[0m
call "GodMode.bat"
goto menu

:activewo
echo.
echo %E%[96m [+] Đang khởi chạy MAS Script...%E%[0m
call "Active_Win_Office.bat"
goto menu

:activeidm
echo.
echo %E%[95m [+] Đang khởi chạy kích hoạt IDM...%E%[0m
call "Active_IDM.bat"
goto menu

:winutil
echo.
echo %E%[94m [+] Đang khởi chạy WinUtil (CTT)...%E%[0m
call "WinUtil_Tool.bat"
goto menu

:debloat
echo.
echo %E%[91m [+] Đang khởi chạy Win Debloat...%E%[0m
call "Win_Debloat.bat"
goto menu

:open_toolbox
echo.
echo %E%[95m [+] Đang khởi chạy Windows Toolbox...%E%[0m
call "Windows_Toolbox.bat"
goto menu

:donrac
echo.
echo %E%[92m [+] Đang khởi chạy dọn rác...%E%[0m
call "Don_Rac.bat"
goto menu

:hengio
echo.
set "phut="
set /p "phut=%E%[93m [?] Nhập số phút (gõ 0 để HỦY): %E%[0m"
if "%phut%"=="0" (
    shutdown -a >nul 2>&1
    echo %E%[92m [✓] Đã HỦY hẹn giờ tắt máy!%E%[0m
) else (
    set /a giay=phut*60
    shutdown -s -t !giay!
    echo %E%[92m [✓] Máy sẽ tắt sau %phut% phút!%E%[0m
)
timeout /t 2 >nul
goto menu

:sualoi
echo.
echo %E%[91m [+] Đang quét & sửa lỗi tệp hệ thống...%E%[0m
echo %E%[90m   ├─ Khôi phục hình ảnh hệ thống (DISM)...%E%[0m
dism /online /cleanup-image /restorehealth
echo %E%[90m   └─ Kiểm tra tệp hệ thống (SFC)...%E%[0m
sfc /scannow
echo.
echo %E%[92m [✓] Hoàn tất! Nhấn Enter để quay lại.%E%[0m
pause >nul
goto menu

:thoat
cls
echo %E%[92m Tạm biệt! Cảm ơn đã sử dụng =33%E%[0m
timeout /t 1 >nul
exit /b
