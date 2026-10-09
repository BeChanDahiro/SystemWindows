# 🛠️ HỆ THỐNG VẠN NĂNG ULTRA PREMIUM

> 🌐 **Trang chủ dự án**: https://bechandahiro.github.io/SystemWindows/
> 👤 **Tác giả**: BeChanDahiro
> ⚙️ **Phiên bản**: v2.1 — Cập nhật 09/10/2026

Bộ siêu công cụ quản trị hệ thống đa năng, được viết bằng **Batch Script** kết hợp **PowerShell**, giao diện màu sắc phong cách **ANSI Cyberpunk**. Tối ưu hóa hiệu năng, dọn dẹp rác, kích hoạt bản quyền và sửa lỗi toàn diện cho **Windows 10 / 11**.

---

## 📋 MỤC LỤC
1. [Tổng quan](#-tổng-quan)
2. [Yêu cầu hệ thống](#-yêu-cầu-hệ-thống)
3. [Cấu trúc thư mục](#-cấu-trúc-thư-mục)
4. [Cách sử dụng](#-cách-sử-dụng)
   - Cách A — Chạy nhanh từ PowerShell
   - Cách B — Chạy trực tiếp trên máy
5. [Chi tiết 11 tính năng](#-chi-tiết-11-tính-năng)
6. [Lưu ý & khắc phục sự cố](#-lưu-ý--khắc-phục-sự-cố)
7. [Cập nhật & phiên bản](#-cập-nhật--phiên-bản)

---

## 📌 TỔNG QUAN

| Thông tin | Chi tiết |
|---|---|
| Hệ điều hành hỗ trợ | Windows 10 (1903+) / Windows 11 (tất cả phiên bản) |
| Ngôn ngữ | Batch + PowerShell |
| Quyền yêu cầu | Quản trị viên (Administrator) |
| Kết nối Internet | Một số tính năng yêu cầu (đã đánh dấu) |
| Mã hóa tệp | **UTF-8** (bắt buộc khi chỉnh sửa) |

---

## 💻 YÊU CẦU HỆ THỐNG
- ✅ Windows 10 phiên bản 1903 trở lên / Windows 11
- ✅ Quyền Quản trị viên khi chạy
- ✅ Kết nối Internet ổn định → cho tính năng số `3, 4, 5, 6, 7`
- ✅ Màn hình hỗ trợ màu ANSI (Windows Terminal / CMD mới)
- ✅ Dung lượng trống tối thiểu: 50 MB

---

## 📂 CẤU TRÚC THƯ MỤC

> ⚠️ **QUAN TRỌNG**: Tất cả tệp phải nằm **cùng một thư mục gốc** để đường dẫn hoạt động chính xác.

```text
📁 SystemWindows/
 ├── 📄 index.html                 ← 🌐 Trang chủ dự án
 ├── 📄 README.md                   ← 📖 Tài liệu hướng dẫn này
 ├── 📄 SystemLauncher.ps1          ← ⚡ Trình khởi chạy từ xa
 ├── 📄 Main.bat                    ← ★ BỘ ĐIỀU KHIỂN TRUNG TÂM — LUÔN chạy tệp này trước
 ├── 📄 Active_Win_Office.bat       ← Kích hoạt Windows & Office (MAS)
 ├── 📄 Active_IDM.bat              ← Kích hoạt Internet Download Manager
 ├── 📄 Don_Rac.bat                 ← Dọn rác, tệp tạm, giải phóng dung lượng
 ├── 📄 GodMode.bat                 ← Bật Chế độ Thần tài ẩn 200+ công cụ
 ├── 📄 Mouse_Properties.bat        ← Cấu hình nâng cao chuột & touchpad
 ├── 📄 Win_Debloat.bat             ← Gỡ ứng dụng rác, tắt theo dõi hệ thống
 ├── 📄 Windows_Toolbox.bat        ← Công cụ quản trị mở rộng từ GitHub
 └── 📄 WinUtil_Tool.bat            ← Tinh chỉnh hệ thống & tối ưu game (Chris Titus)
```

---

## 🚀 CÁCH SỬ DỤNG

### ⚡ Cách A — Chạy Ngay Không Cần Tải Về (Nhanh Nhất)
Mở **PowerShell với quyền Quản trị viên**, dán lệnh sau rồi nhấn **Enter**:

```powershell
irm https://raw.githubusercontent.com/BeChanDahiro/SystemWindows/main/SystemLauncher.ps1 | iex
```

**Đặc điểm**:
- ✅ Tự yêu cầu quyền quản trị viên nếu chưa có
- ✅ Tự tải tất cả tệp cần thiết về thư mục tạm
- ✅ Tự động chạy `Main.bat` đúng vị trí
- ✅ Sau khi thoát → tự xóa sạch không để rác
- ✅ Luôn lấy bản mới nhất từ GitHub

---

### 📂 Cách B — Chạy Trực Tiếp Trên Máy
1. Tải toàn bộ thư mục `SystemWindows/` về máy
2. Nhấp chuột phải vào **`Main.bat`** → chọn **Chạy với quyền quản trị viên**
3. Nếu cửa sổ UAC hiện ra → bấm **Có**
4. Nhập số tương ứng tính năng mong muốn → nhấn **Enter**
5. Sau khi hoàn tất, hệ thống tự quay về Menu chính
6. Chọn **`11`** để thoát an toàn

> ❌ **Không chạy trực tiếp các tệp `.bat` riêng lẻ** — có thể thiếu quyền & biến môi trường cần thiết. Luôn chạy từ `Main.bat`.

---

## 🎮 CHI TIẾT 11 TÍNH NĂNG CHÍNH

| # | Tên Tiện Ích | Chức Năng Chính | Yêu cầu Internet |
|:---:|:---|:---|:---:|
| **`1`** | **Mouse Properties** | Mở nhanh bảng cài đặt nâng cao: tốc độ con trỏ, nhấp đúp, độ nhạy, cấu hình driver touchpad | ❌ Không |
| **`2`** | **GOD MODE** | Kích hoạt thư mục ẩn chứa **hơn 200 công cụ quản trị** tích hợp sẵn của Windows (quản lý đĩa, bảo mật, mạng, tài khoản…) | ❌ Không |
| **`3`** | **MAS Script** | Kết nối kho mã nguồn mở Microsoft Activation Scripts — kích hoạt bản quyền Windows 10/11 & Office 2019/2021/365 | ✅ Có |
| **`4`** | **Active IDM** | Áp dụng IAS Script kích hoạt Internet Download Manager vĩnh viễn, bỏ giới hạn dùng thử | ✅ Có |
| **`5`** | **WinUtil (CTT)** | Giao diện đồ họa hiện đại: cài đặt phần mềm hàng loạt, tắt dịch vụ ngầm, tối ưu hóa hiệu năng chơi game | ✅ Có |
| **`6`** | **Win Debloat** | Gỡ toàn bộ ứng dụng cài sẵn không cần thiết; vô hiệu hóa Telemetry & theo dõi từ xa → giải phóng RAM & CPU đáng kể | ✅ Có |
| **`7`** | **Windows Toolbox** | Tải & chạy trực tiếp bộ công cụ quản trị mã nguồn mở chất lượng cao từ kho GitHub chính thống | ✅ Có |
| **`8`** | **Clear Temp** | Quét & xóa tệp tạm, cache trình duyệt, thùng rác, tệp cập nhật thừa → giải phóng đến hàng chục GB dung lượng | ❌ Không |
| **`9`** | **Shutdown Timer** | Hẹn giờ tắt máy tự động theo số phút nhập vào. **Nhập `0` để hủy** lệnh đang chờ thực thi | ❌ Không |
| **`10`** | **SFC Check** | Thực hiện theo thứ tự chuẩn: `DISM /RestoreHealth` → `sfc /scannow` → sửa lỗi tệp hệ thống, ngăn màn hình xanh, treo máy | ❌ Không |
| **`11`** | **Thoát An Toàn** | Đóng chương trình, dọn dẹp tiến trình phụ, thoát đúng quy trình | — |

### Chi tiết tính năng số 9 — Hẹn giờ tắt máy
| Hành động | Cách thực hiện |
|---|---|
| Đặt hẹn giờ tắt | Chọn `9` → nhập số phút (vd: `60` = tắt sau 1 giờ) → Enter |
| **Hủy lệnh đã đặt** | Chọn lại `9` → nhập **`0`** → Enter |

---

## ⚠️ LƯU Ý & KHẮC PHỤC SỰ CỐ

### Khi chỉnh sửa tệp
- Mở bằng **Notepad++** hoặc trình soạn thảo hỗ trợ mã hóa
- Khi lưu → chọn **Mã hóa: UTF-8** (không dùng ANSI cũ)
- Nếu giao diện hiển thị ký tự lạ/hỏng khung → kiểm tra lại ngay định dạng lưu tệp

### Tính năng cần Internet
- Số `3, 4, 5, 6, 7` dùng lệnh `irm | iex` để kéo mã nguồn trực tiếp từ máy chủ chính chủ
- Nếu lỗi kết nối → kiểm tra tường lửa / VPN / phần mềm diệt virus có chặn không

### Vấn đề thường gặp
| Triệu chứng | Nguyên nhân | Cách khắc phục |
|---|---|---|
| Menu hiển thị lệnh `echo.` lặp lại | Chưa có `@echo off` ở đầu `Main.bat` | Đảm bảo 3 dòng đầu: `@echo off` + `chcp 65001 >nul` + `title ...` |
| Menu không hiển thị màu | CMD không hỗ trợ mã ANSI | Dùng Windows Terminal hoặc bật tùy chọn trong sổ đăng ký |
| Báo lỗi quyền | Chưa chạy với quyền Quản trị viên | Nhấp chuột phải → Chạy với quyền quản trị viên |
| Tính năng số 3/4 không chạy | Mạng chặn kết nối đến GitHub | Thử đổi mạng / tạm tắt tường lửa cá nhân |
| Ký tự hiển thị sai, vỡ khung | Lưu tệp sai mã hóa | Mở lại → Lưu với mã hóa **UTF-8** |
| Tệp con không tự quay về Menu | Dùng `start` thay vì `call` trong code | Cập nhật `Main.bat` dùng lệnh `call "tên_file.bat"` |

### Khuyến nghị bảo mật
- ✅ Nên tạo **Điểm khôi phục hệ thống** trước khi dùng tính năng số `3, 4, 6`
- ✅ Xem mã nguồn các tệp `.bat` để đảm bảo an toàn trước khi thực thi
- ❌ Không chia sẻ lại khi đã chỉnh sửa nội dung nếu không nắm rõ toàn bộ thay đổi
- ❌ Không dùng trên máy tính công ty/trường học nếu không được phép quản trị
- ⚠️ Chỉ chạy lệnh `irm ... | iex` từ nguồn bạn tin tưởng & kiểm soát

---

## 📌 CẬP NHẬT & PHIÊN BẢN
| Phiên bản | Ngày | Nội dung thay đổi |
|---|---|---|
| `v1.0` | — | Phát hành bản cơ bản với 11 tính năng chính |
| `v2.0` | 09/10/2026 | Thêm `SystemLauncher.ps1` chạy từ xa, trang chủ `index.html`, tài liệu chi tiết |
| `v2.1` | 09/10/2026 | Sửa `Main.bat`: dùng `call` thay `start`, chuẩn hóa mã hóa UTF-8, cải thiện hiển thị & xử lý nhập liệu |

---

> ⚡ **Tuyên bố miễn trừ trách nhiệm**: Bộ công cụ này được cung cấp "nguyên trạng" nhằm mục đích học tập & tối ưu hóa máy tính cá nhân. Người sử dụng tự chịu trách nhiệm về việc áp dụng trên thiết bị của mình.

> 🌐 **Xem trực tiếp dự án**: https://bechandahiro.github.io/SystemWindows/
