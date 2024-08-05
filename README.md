**Mô tả**  
Script này sử dụng ttn-miner để đào SPR tự động thông qua termux. Mỗi khi khởi động termux sẽ tự động khởi chạy chương trình đào SPR với các thông số đã thiết lập trong quá trình cài đặt.

**Yêu cầu hệ thống**
- Thiết bị Android đã cài đặt Termux
- Kết nối Internet ổn định
- Một địa chỉ ví tiền điện tử để nhận phần thưởng khai thác

**Cài đặt**  
Cài đặt termux phiên bản mới nhất [tại đây](https://github.com/termux/termux-app/releases/download/v0.118.1/termux-app_v0.118.1+github-debug_arm64-v8a.apk).  
Khởi động termux và chạy câu lệnh ```curl -o- -k https://raw.githubusercontent.com/june4th/spectre-mine/main/setup.sh | bash``` mọi thứ sẽ tự động làm việc. Đợi từ 5 - 15 phút để hoàn tất. Nhập tên worker theo ý thích, mặc định là JOY3.  
Thay đổi địa chỉ ví:  
```
cd ubuntu-in-termux
./startubuntu.sh
cd spectre-mine
nano start.sh
```
tìm đến đoạn `--wallet spectre:qz0qlynwptd4lgzh4vy9pz8g3vkw8v97jkpp7dudenzqzt7qayw32rjzlkgfs` thay đổi địa chỉ ví của bạn bắt đầu từ `spectre:xxxx`. Sau đó bấm `ctrl + o` enter `ctrl + x` enter.  
`exit` enter  
Khởi động lại termux.
DONE.

**Liên hệ**  
Nếu có thắc mắc hoặc góp ý, vui lòng liên hệ:

**Email:** hoadp.vn@gmail.com  
**GitHub:** [https://github.com/june4th/spectre-mine](https://github.com/june4th/spectre-mine)
