#!/bin/sh
cd ~/ubuntu-in-termux/ && ./startubuntu.sh
echo "Đang đợi Ubuntu khởi động..."
sleep 5
echo "Đã truy cập vào Ubuntu."
cd spectre-mine
echo "Nhập tên worker mới (hoặc nhấn Enter để giữ nguyên JOY3): " 
new_worker_name=$(termux-dialog text -i "" -t "Nhập tên nhân viên mới:")
[ -z "$new_worker_name" ]&&new_worker_name="JOY3"
sed -i "s/--worker-name JOY3/--worker-name $new_worker_name/g" start.sh
echo "Tên worker đã được cập nhật thành $new_worker_name"
