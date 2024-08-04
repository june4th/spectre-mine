#!/bin/sh
echo "Nhập tên worker mới (hoặc nhấn Enter để giữ nguyên JOY3): " 
new_worker_name=$(dialog --inputbox "Nhập tên nhân viên mới:" 10 60 3>&1 1>&2 2>&3)
[ -z "$new_worker_name" ]&&new_worker_name="JOY3"
sed -i "s/--worker-name JOY3/--worker-name $new_worker_name/g" start.sh
echo "Tên worker đã được cập nhật thành $new_worker_name"
