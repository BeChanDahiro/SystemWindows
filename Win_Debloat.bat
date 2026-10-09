@echo off
title TOI UU HOA VA GO RAO WINDOWS (DEBLOAT)
echo ==========================================
echo    DANG KHOI CHAY SIEU CONG CU DEBLOAT
echo ==========================================
echo.
echo [!] Vui long cho trong giay lat de tai ma nguon...
echo.

:: Chạy lệnh gọi công cụ tối ưu hóa hệ thống từ GitHub
powershell -NoProfile -ExecutionPolicy Bypass -Command "& ([scriptblock]::Create((irm 'https://debloat.raphi.re/')))"

exit
