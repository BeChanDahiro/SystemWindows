@echo off
title KICH HOAT WINDOWS VA OFFICE
echo ==========================================
echo   DANG KICH HOAT CONG CU ACTIVE CHUAN MAS
echo ==========================================
echo.
echo [!] Vui long cho trong giay lat de tai du lieu...
echo.

:: Chạy lệnh PowerShell với quyền Bypass chính sách để gọi MAS
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://get.activated.win | iex"

exit
