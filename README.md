# 🛠️ HỆ THỐNG VẠN NĂNG ULTRA PREMIUM
**Bộ siêu công cụ quản trị hệ thống đa năng** — được phát triển trên nền tảng tệp lệnh nhóm (`.bat`) kết hợp lõi xử lý `PowerShell` với giao diện màu sắc phong cách **ANSI Cyberpunk**. Tối ưu hóa hiệu năng, dọn dẹp rác hệ thống, kích hoạt bản quyền và sửa lỗi toàn diện cho **Windows 10 / 11**.

---

## 📋 MỤC LỤC
1. [Thông tin chung](#-thông-tin-chung)
2. [Cấu trúc thư mục](#-cấu-trúc-thư-mục)
3. [Danh sách tính năng](#-danh-sách-tính-năng-11-tính-năng-chính)
4. [Yêu cầu hệ thống](#-yêu-cầu-hệ-thống)
5. [Hướng dẫn cài đặt & sử dụng](#-hướng-dẫn-cài-đặt--sử-dụng)
6. [Chi tiết từng tính năng](#-chi-tiet-từng-tính-năng)
7. [Lưu ý bảo mật & khắc phục sự cố](#-lưu-ý-bảo-mật--khắc-phục-sự-cố)
8. [Cập nhật & phiên bản](#-cập-nhật--phiên-bản)

---

## 📌 THÔNG TIN CHUNG
| Thông tin | Chi tiết |
|---|---|
| Tên dự án | Hệ Thống Vạn Năng Ultra Premium |
| Phiên bản hiện tại | `v2.0 — Cập nhật tháng 10/2026` |
| Hệ điều hành hỗ trợ | Windows 10 (1903+) / Windows 11 (tất cả phiên bản) |
| Ngôn ngữ lập trình | Batch Script + PowerShell |
| Giao diện | Màu ANSI — phong cách Cyberpunk |
| Quyền yêu cầu | Quản trị viên (Administrator) |

---

## 📂 CẤU TRÚC THƯ MỤC
> ⚠️ **QUAN TRỌNG:** Tất cả tệp phải nằm **cùng một thư mục gốc** để đường dẫn hoạt động chính xác.

```text
📁 SystemWindows/
 ├── 📄 README.md                 ← Tài liệu hướng dẫn này
 ├── 📄 Main.bat                   ← ★ Bộ điều khiển trung tâm — LUÔN chạy tệp này trước
 ├── 📄 Active_IDM.bat             ← Kích hoạt bản quyền IDM
 ├── 📄 Active_Win_Office.bat       ← Kích hoạt Windows & Office (MAS)
 ├── 📄 Don_Rac.bat                 ← Dọn rác, tệp tạm, bộ nhớ đệm
 ├── 📄 GodMode.bat                 ← Bật Chế độ Thần tài ẩn
 ├── 📄 Mouse_Properties.bat        ← Cấu hình nâng cao chuột & touchpad
 ├── 📄 Win_Debloat.bat             ← Gỡ ứng dụng rác & tắt theo dõi
 ├── 📄 Windows_Toolbox.bat         ← Công cụ quản trị mở rộng từ GitHub
 ├── 📄 WinUtil_Tool.bat            ← Tinh chỉnh hệ thống của Chris Titus
 └── 📄 .gitignore                  ← (Tùy chọn) Loại trừ tệp tạm khi đăng lên Git
```

---

## 🎮 DANH SÁCH TÍNH NĂNG (11 TÍNH NĂNG CHÍNH)
| Phím số | Tên tiện ích | Mô tả chức năng chính | Yêu cầu Internet |
|:---:|:---|:---|:---:|
| **`1`** | Mouse Properties | Mở nhanh bảng điều khiển nâng cao: tốc độ con trỏ, nhấp đúp, độ nhạy, cấu hình driver touchpad | ❌ Không |
| **`2`** | GOD MODE | Kích hoạt thư mục ẩn chứa **hơn 200 công cụ quản trị** tích hợp sẵn của Windows | ❌ Không |
| **`3`** | MAS Script | Tự động kết nối với kho mã nguồn mở Microsoft Activation Scripts — kích hoạt bản quyền Windows / Office an toàn | ✅ Có |
| **`4`** | Active IDM | Áp dụng IAS Script kích hoạt Internet Download Manager vĩnh viễn, bỏ giới hạn dùng thử | ✅ Có |
| **`5`** | WinUtil (Chris Titus) | Giao diện đồ họa hiện đại: cài đặt phần mềm hàng loạt, tắt dịch vụ ngầm, tối ưu cho chơi game | ✅ Có |
| **`6`** | Win Debloat | Gỡ toàn bộ ứng dụng cài sẵn không cần thiết; vô hiệu hóa Telemetry & theo dõi từ xa → giải phóng RAM & CPU | ✅ Có |
| **`7`** | Windows Toolbox | Tải & chạy trực tiếp bộ công cụ quản trị mã nguồn mở chất lượng cao từ kho GitHub chính thống | ✅ Có |
| **`8`** | Clear Temp | Quét & xóa tệp tạm, cache trình duyệt, thùng rác, tệp cập nhật thừa → giải phóng đến hàng chục GB dung lượng | ❌ Không |
| **`9`** | Shutdown Timer | Hẹn giờ tự động tắt / khởi động lại / ngủ máy. Nhập `0` để hủy lệnh đang chờ | ❌ Không |
| **`10`** | SFC Check | Quét & sửa lỗi tệp hệ thống: `sfc /scannow`, `DISM` → ngăn ngừa màn hình xanh, treo máy | ❌ Không |
| **`11`** | Thoát an toàn | Dọn dẹp biến môi trường tạm, đóng tiến trình phụ, thoát chương trình đúng quy trình | — |

---

## 💻 YÊU CẦU HỆ THỐNG
- Windows 10 phiên bản 1903 trở lên / Windows 11 (tất cả bản)
- Quyền **Quản trị viên** khi chạy
- Kết nối Internet ổn định → cho tính năng số `3, 4, 5, 6, 7`
- Màn hình hỗ trợ mã hóa **UTF-8** & màu ANSI (Windows Terminal / CMD mới)
- Dung lượng trống tối thiểu: 50 MB

---

## 🚀 HƯỚNG DẪN SỬ DỤNG CHI TIẾT

### Bước 1: Khởi chạy đúng cách
1. Nhấp chuột phải vào tệp **`Main.bat`**
2. Chọn **Chạy với quyền quản trị viên** (*Run as Administrator*)
3. Nếu cửa sổ UAC hiện ra → bấm **Có** để xác nhận

> ❌ **Không chạy trực tiếp các tệp `.bat` riêng lẻ** — có thể thiếu quyền & biến môi trường cần thiết

### Bước 2: Thao tác trên Menu chính
- Giao diện hiển thị danh sách từ `[1]` đến `[11]` với màu sắc phân biệt
- **Nhập số** tương ứng với chức năng mong muốn → nhấn **Enter**
- Sau khi hoàn tất, hệ thống tự động quay về Menu chính
- Lặp lại cho đến khi xong → chọn `11` để thoát

### Bước 3: Sử dụng Hẹn giờ tắt máy — số `9`
| Hành động | Cách thực hiện |
|---|---|
| Đặt hẹn giờ tắt | Nhập `9` → gõ số phút (vd: `60` = tắt sau 1 giờ) → Enter |
| Đổi sang Khởi động lại / Ngủ | (Trong phiên bản nâng cấp) chọn hành động mong muốn trước khi nhập thời gian |
| **Hủy lệnh đã đặt** | Chọn lại `9` → gõ số **`0`** → Enter |

### Bước 4: Kết thúc phiên làm việc
- Luôn chọn **`11` — Thoát an toàn** để hệ thống dọn dẹp sạch sẽ trước khi đóng

---

## 🔧 CHI TIẾT TỪNG TÍNH NĂNG NỔI BẬT

### 1. Mouse Properties
- Mở ngay bảng cài đặt nâng cao con trỏ, bỏ qua giao diện đơn giản của Cài đặt Windows
- Tích hợp đường dẫn trực tiếp đến thiết bị phần cứng & driver touchpad (nếu có)

### 2. GOD MODE
- Tạo ngay thư mục chuyên dụng chứa hơn 200 mục cấu hình nâng cao
- Bao gồm: Quản lý đĩa, Lịch sử tệp, Bảo mật, Mạng, Tài khoản người dùng…

### 3. MAS Script
- Sử dụng mã nguồn từ kho **massgrave.dev** — nguồn mở, minh bạch
- Hỗ trợ kích hoạt: Windows 10/11 Pro/Home/Enterprise, Office 2019/2021/365

### 6. Win Debloat
- Tạo điểm khôi phục hệ thống trước khi gỡ bỏ
- Liệt kê ứng dụng sẽ xóa trước khi thực hiện → bạn có thể xem & xác nhận
- Lưu nhật ký gỡ bỏ tại thư mục tạm hệ thống

### 10. SFC Check
- Thực hiện theo thứ tự chuẩn:
  1. `DISM /Online /Cleanup-Image /RestoreHealth` — sửa hình ảnh hệ thống
  2. `sfc /scannow` — thay thế tệp hỏng bằng bản lành
  3. Tóm tắt kết quả & đề xuất khởi động lại nếu cần

---

## ⚠️ LƯU Ý BẢO MẬT & KHẮC PHỤC SỰ CỐ

### Khi chỉnh sửa tệp
- Mở bằng **Notepad++** hoặc trình soạn thảo hỗ trợ mã hóa
- Khi lưu → chọn **Mã hóa: UTF-8** (không dùng ANSI cũ)
- Nếu giao diện hiển thị ký tự lạ/hỏng khối → kiểm tra lại ngay định dạng lưu tệp

### Tính năng cần Internet
- Số `3, 4, 5, 6, 7` dùng lệnh `irm | iex` để kéo mã nguồn trực tiếp từ máy chủ chính chủ
- Nếu lỗi kết nối → kiểm tra tường lửa / VPN / phần mềm diệt virus có chặn không

### Vấn đề thường gặp
| Triệu chứng | Nguyên nhân | Cách khắc phục |
|---|---|---|
| Menu không hiển thị màu | CMD không hỗ trợ ANSI | Dùng Windows Terminal / bật tùy chọn "Bật mã hóa màu" trong sổ đăng ký |
| Báo lỗi quyền | Chưa chạy với quyền Quản trị viên | Nhấp chuột phải → Chạy với quyền quản trị viên |
| Tính năng số 3/4 không chạy | Mạng chặn kết nối đến GitHub | Thử đổi mạng / tạm tắt tường lửa cá nhân |
| Ký tự hiển thị sai, vỡ khung | Lưu tệp sai mã hóa | Mở lại → Lưu với mã hóa **UTF-8** |

### Khuyến nghị bảo mật
- ✅ Nên tạo **Điểm khôi phục hệ thống** trước khi dùng tính năng số `3, 4, 6`
- ✅ Xem mã nguồn các tệp `.bat` để đảm bảo an toàn trước khi thực thi
- ❌ Không chia sẻ lại khi đã chỉnh sửa nội dung nếu không nắm rõ toàn bộ thay đổi
- ❌ Không dùng trên máy tính công ty/trường học nếu không được phép quản trị

---

## 📌 CẬP NHẬT & PHIÊN BẢN
| Phiên bản | Ngày | Nội dung thay đổi |
|---|---|---|
| `v1.0` | — | Phát hành bản cơ bản với 11 tính năng chính |
| `v2.0` | 09/10/2026 | Cập nhật tài liệu chi tiết, bổ sung mục lục, bảng yêu cầu, hướng dẫn sửa lỗi |

> 📧 Nếu gặp khó khăn hoặc có đề xuất cải thiện → đóng góp ý kiến tại kho mã nguồn hoặc liên hệ người phát triển

---

> ⚡ **Tuyên bố miễn trừ trách nhiệm:** Bộ công cụ này được cung cấp "nguyên trạng" nhằm mục đích học tập & tối ưu hóa máy tính cá nhân. Người sử dụng tự chịu trách nhiệm về việc áp dụng trên thiết bị của mình.