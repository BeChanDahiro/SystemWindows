@echo off
title DONG BOP DON RAC HE THONG
echo Dang xoa tep tin tam va bo nho dem...
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %windir%\Prefetch\*.*
del /f /s /q %windir%\Temp\*.*
del /f /s /q %userprofile%\AppData\Local\Temp\*.*
echo Da don rac sach se!
timeout /t 2 >nul
exit
