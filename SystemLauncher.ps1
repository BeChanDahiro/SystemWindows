<#
.SYNOPSIS
🚀 Hệ Thống Vạn Năng Ultra Premium — Trình khởi chạy từ GitHub
🔗 Nguồn: https://github.com/BeChanDahiro/SystemWindows
#>

# === Cấu hình ===
$RepoOwner = "BeChanDahiro"
$RepoName  = "SystemWindows"
$Branch    = "main"
$Files     = @(
    "Main.bat",
    "Active_Win_Office.bat",
    "Active_IDM.bat",
    "Don_Rac.bat",
    "GodMode.bat",
    "Mouse_Properties.bat",
    "Win_Debloat.bat",
    "Windows_Toolbox.bat",
    "WinUtil_Tool.bat"
)

# === Kiểm tra quyền quản trị ===
$IsAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $IsAdmin) {
    Write-Host "⚠️  Đang yêu cầu quyền Quản trị viên..." -ForegroundColor Yellow
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -Command `"irm https://raw.githubusercontent.com/$RepoOwner/$RepoName/$Branch/SystemLauncher.ps1 | iex`"" -Verb RunAs
    exit
}

# === Thư mục làm việc ===
$WorkDir = Join-Path $env:TEMP "SystemWindows_$(Get-Random -Maximum 99999)"
New-Item -ItemType Directory -Path $WorkDir -Force | Out-Null
Write-Host "📂 Thư mục tạm: $WorkDir" -ForegroundColor Cyan

# === Tải tất cả tệp ===
Write-Host "`n🌐 Đang tải tệp từ GitHub..." -ForegroundColor Cyan
$BaseUrl = "https://raw.githubusercontent.com/$RepoOwner/$RepoName/$Branch"
foreach ($f in $Files) {
    try {
        $OutFile = Join-Path $WorkDir $f
        Write-Host "   ↳ $f" -ForegroundColor Gray
        $content = Invoke-RestMethod -Uri "$BaseUrl/$f" -TimeoutSec 20
        [System.IO.File]::WriteAllText($OutFile, $content, [System.Text.Encoding]::UTF8)
    }
    catch {
        Write-Host "❌ Lỗi tải $f : $_" -ForegroundColor Red
        Read-Host "Nhấn Enter để thoát"
        exit 1
    }
}

# === Chạy Main.bat ===
Write-Host "`n🚀 Khởi chạy Hệ Thống Vạn Năng..." -ForegroundColor Green
Set-Location $WorkDir
Start-Process -FilePath ".\Main.bat" -WorkingDirectory $WorkDir -Wait

# === Dọn dẹp sau khi thoát ===
Write-Host "`n🧹 Đang dọn dẹp..." -ForegroundColor Gray
try { Remove-Item $WorkDir -Recurse -Force -ErrorAction Stop } catch {}
Write-Host "✅ Hoàn tất! Tạm biệt =33" -ForegroundColor Green
Start-Sleep -Seconds 1
