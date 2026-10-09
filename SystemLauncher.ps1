<#
.SYNOPSIS
🚀 Hệ Thống Vạn Năng Ultra Premium — Trình khởi chạy từ GitHub
🔗 Nguồn: https://github.com/BeChanDahiro/SystemWindows
📅 Cập nhật: 09/10/2026
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

# === Bỏ giới hạn thực thi lệnh PowerShell ===
Set-ExecutionPolicy Bypass -Scope Process -Force -ErrorAction SilentlyContinue

# === Kiểm tra quyền quản trị ===
$IsAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $IsAdmin) {
    Write-Host "⚠️  Đang yêu cầu quyền Quản trị viên..." -ForegroundColor Yellow
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -Command `"irm https://raw.githubusercontent.com/$RepoOwner/$RepoName/$Branch/SystemLauncher.ps1 | iex`"" -Verb RunAs
    exit
}

# === Tắt tiến trình bị treo (nếu có) ===
Get-Process cmd -ErrorAction SilentlyContinue | Where-Object { $_.MainWindowTitle -like "*SystemWindows*" } | Stop-Process -Force -ErrorAction SilentlyContinue

# === Thư mục làm việc ===
$WorkDir = Join-Path $env:TEMP "SystemWindows_$(Get-Random -Maximum 99999)"
New-Item -ItemType Directory -Path $WorkDir -Force | Out-Null
Write-Host "📂 Thư mục tạm: $WorkDir" -ForegroundColor Cyan

# === Tải tất cả tệp ===
Write-Host "`n🌐 Đang tải tệp từ GitHub..." -ForegroundColor Cyan
$BaseUrl = "https://raw.githubusercontent.com/$RepoOwner/$RepoName/$Branch"
$SuccessCount = 0

foreach ($f in $Files) {
    try {
        $OutFile = Join-Path $WorkDir $f
        Write-Host "   ↳ $f" -ForegroundColor Gray
        
        $content = Invoke-RestMethod -Uri "$BaseUrl/$f" -TimeoutSec 30
        [System.IO.File]::WriteAllText($OutFile, $content, [System.Text.Encoding]::UTF8)
        
        $SuccessCount++
    }
    catch {
        Write-Host "   ❌ Lỗi tải $f : $($_.Exception.Message)" -ForegroundColor Red
    }
}

# === Kiểm tra đủ tệp chưa ===
if ($SuccessCount -lt $Files.Count) {
    Write-Host "`n⚠️  Chỉ tải được $SuccessCount/$($Files.Count) tệp!" -ForegroundColor Yellow
    $continue = Read-Host "Tiếp tục chạy? (Y/N)"
    if ($continue -notmatch "^[Yy]$") {
        Write-Host "Đã hủy." -ForegroundColor Red
        exit 1
    }
} else {
    Write-Host "✅ Tải đủ $SuccessCount tệp thành công!" -ForegroundColor Green
}

# === Kiểm tra Main.bat tồn tại ===
$MainBat = Join-Path $WorkDir "Main.bat"
if (-not (Test-Path $MainBat)) {
    Write-Host "`n❌ LỖI: Không tìm thấy Main.bat! Kiểm tra kết nối mạng." -ForegroundColor Red
    Read-Host "Nhấn Enter để thoát"
    exit 1
}

# === Chạy Main.bat — đảm bảo chờ đóng mới tiếp tục ===
Write-Host "`n🚀 Khởi chạy Hệ Thống Vạn Năng..." -ForegroundColor Green
Write-Host "════════════════════════════════════════`n" -ForegroundColor Magenta

Set-Location $WorkDir
Start-Process -FilePath "cmd.exe" -ArgumentList "/c .\Main.bat" -WorkingDirectory $WorkDir -Wait -NoNewWindow

# === Dọn dẹp sau khi thoát ===
Write-Host "`n════════════════════════════════════════" -ForegroundColor Magenta
Write-Host "🧹 Đang dọn dẹp..." -ForegroundColor Gray

try {
    Set-Location $env:TEMP
    Remove-Item $WorkDir -Recurse -Force -ErrorAction Stop
    Write-Host "✅ Đã dọn dẹp xong!" -ForegroundColor Green
}
catch {
    Write-Host "⚠️  Không xóa được thư mục tạm (đang dùng), bỏ qua..." -ForegroundColor Yellow
}

Write-Host "`n👋 Tạm biệt! Cảm ơn đã sử dụng =33" -ForegroundColor Green
Start-Sleep -Seconds 1
