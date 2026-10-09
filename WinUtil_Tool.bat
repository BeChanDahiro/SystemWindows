@echo off
title KICH HOAT CHRIS TITUS TECH WINDOWS UTILITY
echo ==========================================
echo     DANG KHOI CHAY SIEU CONG CU WINUTIL
echo ==========================================
echo.
echo [!] Vui long cho trong giay lat de tai giao dien...
echo.

:: Chạy lệnh PowerShell gọi công cụ WinUtil toàn diện
powershell -NoProfile -ExecutionPolicy Bypass -Command "irm https://christitus.com/win | iex"

exit
