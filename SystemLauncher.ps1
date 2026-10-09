<#
.SYNOPSIS
🚀 Hệ Thống Vạn Năng Ultra Premium — Trình khởi chạy từ GitHub
🔗 Nguồn: https://github.com/BeChanDahiro/SystemWindows
📅 Cập nhật: 09/10/2026 — Giữ thư mục để kiểm tra
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

# === Thư mục làm việc ===
$WorkDir = Join-Path $env:TEMP "SystemWindows_$(Get-Random -Maximum 99999)"
New-Item -ItemType Directory -Path $WorkDir -Force | Out-Null
Write-Host "`n📂 Thư mục làm việc: $WorkDir" -ForegroundColor Cyan
Write-Host "💡 Lưu đường dẫn trên để kiểm tra tệp nha!`n" -ForegroundColor Yellow

# === Tải tất cả tệp ===
Write-Host "🌐 Đang tải tệp từ GitHub..." -ForegroundColor Cyan
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
} else {
    Write-Host "✅ Tải đủ $SuccessCount tệp thành công!" -ForegroundColor Green
}

# === Mở thư mục ra cho bạn xem luôn nha ===
Write-Host "`n📂 Đang mở thư mục chứa tệp..." -ForegroundColor Cyan
explorer.exe $WorkDir

# === Kiểm tra Main.bat tồn tại ===
$MainBat = Join-Path $WorkDir "Main.bat"
if (-not (Test-Path $MainBat)) {
    Write-Host "`n❌ LỖI: Không tìm thấy Main.bat!" -ForegroundColor Red
    Read-Host "Nhấn Enter để thoát"
    exit 1
}

# === Chạy Main.bat ===
Write-Host "`n🚀 Khởi chạy Hệ Thống Vạn Năng..." -ForegroundColor Green
Write-Host "════════════════════════════════════════`n" -ForegroundColor Magenta

Set-Location $WorkDir
Start-Process -FilePath "cmd.exe" -ArgumentList "/c .\Main.bat" -WorkingDirectory $WorkDir -Wait -NoNewWindow

# === Đóng rồi — Chờ bạn xác nhận mới xóa ===
Write-Host "`n════════════════════════════════════════" -ForegroundColor Magenta
Write-Host "✅ Đã đóng chương trình. Thư mục vẫn còn ở đây: $WorkDir" -ForegroundColor Green
Write-Host "💡 Bạn có thể mở thư mục trên để xem/chỉnh sửa tệp trước khi xóa" -ForegroundColor Yellow

$xoa = Read-Host "`nBạn có muốn XÓA thư mục tạm bây giờ không? (Y = xóa / Bất kỳ = giữ lại)"
if ($xoa -match "^[Yy]$") {
    Write-Host "🧹 Đang dọn dẹp..." -ForegroundColor Gray
    try {
        Set-Location $env:TEMP
        Remove-Item $WorkDir -Recurse -Force -ErrorAction Stop
        Write-Host "✅ Đã xóa! Tạm biệt =33" -ForegroundColor Green
    }
    catch {
        Write-Host "⚠️  Không xóa được (đang mở), thư mục vẫn được giữ lại" -ForegroundColor Yellow
    }
} else {
    Write-Host "💾 Đã GIỮ LẠI thư mục tại: $WorkDir" -ForegroundColor Cyan
    Write-Host "Bạn có thể xóa thủ công khi không cần nữa nha!" -ForegroundColor Gray
}

Start-Sleep -Seconds 2
