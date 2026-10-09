<#
.SYNOPSIS
🚀 Hệ Thống Vạn Năng Ultra Premium — Trình khởi chạy từ GitHub
🔗 Nguồn: https://github.com/BeChanDahiro/SystemWindows
📅 Cập nhật: 09/10/2026 — Lưu ra Desktop, không dùng TEMP
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

# === LUÔN LƯU RA DESKTOP — KHÔNG DÙNG TEMP NỮA ===
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$WorkDir = Join-Path $DesktopPath "SystemWindows"

# === Xóa thư mục cũ nếu có, tạo mới sạch sẽ ===
if (Test-Path $WorkDir) {
    Write-Host "📂 Thay the thu muc cu tai Desktop..." -ForegroundColor Yellow
    try { Remove-Item $WorkDir -Recurse -Force -ErrorAction Stop }
    catch { Write-Host "⚠️  Khong xoa duoc thu muc cu, dang su dung tiep..." -ForegroundColor Yellow }
}
if (-not (Test-Path $WorkDir)) {
    New-Item -ItemType Directory -Path $WorkDir -Force | Out-Null
}

Write-Host "`n📂 Thu muc lam viec: $WorkDir" -ForegroundColor Green
Write-Host "💡 Thu muc NGUYEN VEN tren Desktop, khong bi tu xoa!`n" -ForegroundColor Cyan

# === Tải tất cả tệp ===
Write-Host "🌐 Dang tai tep tu GitHub..." -ForegroundColor Cyan
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
        Write-Host "   ❌ Loi tai $f : $($_.Exception.Message)" -ForegroundColor Red
    }
}

# === Kiểm tra đủ tệp chưa ===
if ($SuccessCount -lt $Files.Count) {
    Write-Host "`n⚠️  Chi tai duoc $SuccessCount/$($Files.Count) tep!" -ForegroundColor Yellow
} else {
    Write-Host "✅ Tai du $SuccessCount tep thanh cong!" -ForegroundColor Green
}

# === Mở thư mục ra luôn cho bạn thấy ===
Write-Host "`n📂 Dang mo thu muc..." -ForegroundColor Cyan
explorer.exe $WorkDir

# === Kiểm tra Main.bat tồn tại ===
$MainBat = Join-Path $WorkDir "Main.bat"
if (-not (Test-Path $MainBat)) {
    Write-Host "`n❌ LOI: Khong tim thay Main.bat! Kiem tra ket noi mang." -ForegroundColor Red
    Read-Host "Nhan Enter de thoat"
    exit 1
}

# === Chạy Main.bat ===
Write-Host "`n🚀 Khoi chay He Thong Van Nang..." -ForegroundColor Green
Write-Host "========================================`n" -ForegroundColor Magenta

Set-Location $WorkDir
Start-Process -FilePath "cmd.exe" -ArgumentList "/c .\Main.bat" -WorkingDirectory $WorkDir -Wait -NoNewWindow

# === XONG — KHÔNG XÓA GÌ CẢ ===
Write-Host "`n========================================" -ForegroundColor Magenta
Write-Host "✅ Da dong chuong trinh!" -ForegroundColor Green
Write-Host "💡 Thu muc van o Desktop: $WorkDir" -ForegroundColor Cyan
Write-Host "💡 Ban co mo lai Main.bat bat cu luc nao!" -ForegroundColor Yellow
Write-Host "💡 Tu xoa thu muc khi khong can nua nha!" -ForegroundColor Gray

Start-Sleep -Seconds 3