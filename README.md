# 🛠️ HỆ THỐNG VẠN NĂNG ULTRA PREMIUM

> 🌐 **Trang chủ dự án:** https://bechandahiro.github.io/SystemWindows/

Bộ siêu công cụ quản trị hệ thống đa năng được đóng gói bằng tập lệnh nhóm (`.bat`) kết hợp lõi `PowerShell` và giao diện màu sắc `ANSI Cyberpunk`. Hỗ trợ tối ưu hóa hiệu năng, dọn rác, kích hoạt bản quyền và sửa lỗi hệ thống toàn diện cho **Windows 10** và **Windows 11**.

---

## 📂 Cấu Trúc Thư Mục Hệ Thống
Để bộ công cụ hoạt động chuẩn xác không lỗi đường dẫn, tất cả các tệp tin cấu hình bắt buộc phải được đặt chung trong một thư mục cốt lõi (Ví dụ: `SystemWindows`):
```text
📁 SystemWindows/
 ├── 📄 index.html              ← 🌐 Trang chủ dự án
 ├── 📄 README.md               ← Tài liệu hướng dẫn này
 ├── 📄 Main.bat                ← Bộ điều khiển trung tâm
 ├── 📄 Active_IDM.bat
 ├── 📄 Active_Win_Office.bat
 ├── 📄 Don_Rac.bat
 ├── 📄 GodMode.bat
 ├── 📄 Mouse_Properties.bat
 ├── 📄 Win_Debloat.bat
 ├── 📄 Windows_Toolbox.bat
 └── 📄 WinUtil_Tool.bat
```

---

## 🎮 Danh Sách 11 Tính Năng Tối Cao
| Phím Số | Tên Tiện Ích | Chức Năng Chính | Yêu cầu Internet |
| :---: | :--- | :--- | :---: |
| **`1`** | **Mouse Properties** | Mở nhanh cửa sổ cấu hình chuột, tốc độ con trỏ và Driver Touchpad | ❌ |
| **`2`** | **GOD MODE** | Kích hoạt kho lưu trữ ẩn chứa hơn 200 công cụ quản trị vạn năng của Windows | ❌ |
| **`3`** | **MAS Script** | Tự động kích hoạt bản quyền an toàn cho Windows và Microsoft Office | ✅ |
| **`4`** | **Active IDM** | Kích hoạt bản quyền Internet Download Manager vĩnh viễn qua IAS Script | ✅ |
| **`5`** | **WinUtil (Chris Titus)** | Bộ giao diện đồ họa (GUI) cài app siêu tốc, tinh chỉnh dịch vụ ngầm tối ưu game | ✅ |
| **`6`** | **Win Debloat** | Gỡ bỏ sạch sẽ ứng dụng rác cài sẵn, tắt Telemetry theo dõi ẩn giải phóng RAM | ✅ |
| **`7`** | **Windows Toolbox** | Siêu tiện ích quản trị mã nguồn mở chất lượng cao trực tiếp từ hệ thống GitHub | ✅ |
| **`8`** | **Clear Temp** | Quét sạch tệp tin tạm, cache bộ nhớ đệm, dọn trống hàng chục GB ổ cứng | ❌ |
| **`9`** | **Shutdown Timer** | Bộ hẹn giờ tắt máy tính tự động theo số phút nhập vào bàn phím | ❌ |
| **`10`** | **SFC Check** | Quét sâu cấu trúc hệ thống, tự động vá lỗi tệp tin và ngăn chặn màn hình xanh | ❌ |
| **`11`** | **Thoát an toàn** | Đóng tệp lệnh điều hướng và dọn dẹp các tiến trình chạy ngầm | — |

---

## 🚀 Hướng Dẫn Sử Dụng Chi Tiết
### 🛠️ Bước 1: Khởi chạy với quyền tối cao
Vì bộ công cụ can thiệp sâu vào các thiết lập phần cứng và bản quyền hệ thống, bạn **bắt buộc** phải cấp quyền Administrator để các nút bấm hoạt động:
* Nhấp chuột phải vào tệp tổng `Main.bat`
* Chọn **Run as Administrator** (Chạy với quyền quản trị viên)

### ⌨️ Bước 2: Thao tác điều khiển Menu
* Hệ thống sẽ hiển thị giao diện phẳng Cyberpunk đa màu sắc rất dễ nhìn
* Nhập số thứ tự từ `[1]` đến `[11]` tương ứng chức năng → nhấn **Enter**
* Sau khi hoàn thành, hệ thống tự động quay về Menu chính

### ⏱️ Hẹn giờ tắt máy (Phím số 9)
* Nhập số phút mong muốn (vd: `60` = tắt sau 1 giờ)
* **Hủy lệnh**: chọn lại `9` → nhập **`0`** → Enter

---

## ⚠️ Lưu Ý Bảo Mật Quan Trọng
1. **Mã hóa khi lưu tệp**: Khi chỉnh sửa bất kỳ tệp `.bat` nào, lưu với định dạng **UTF-8** để giao diện không bị vỡ
2. **Kết nối mạng**: Tính năng số `3, 4, 5, 6, 7` yêu cầu Internet ổn định để tải mã nguồn
3. **Luôn chạy `Main.bat`**: Không chạy lẻ từng tệp con để đảm bảo đủ quyền

---

> 🌐 Xem trực tiếp tại: **https://bechandahiro.github.io/SystemWindows/**
