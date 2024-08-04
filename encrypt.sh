#!/bin/sh
yes|pkg update&&pkg upgrade
yes|pkg install git wget proot
cd ~&&git clone https://github.com/MFDGaming/ubuntu-in-termux.git
! grep -q "startubuntu.sh" ~/.bashrc&&echo "cd ~/ubuntu-in-termux/ && ./startubuntu.sh" >> ~/.bashrc
cd ubuntu-in-termux
chmod +x ubuntu.sh
./ubuntu.sh -y
./startubuntu.sh
apt-get update -y&&apt-get upgrade -y
apt-get install git -y
git clone https://github.com/june4th/spectre-mine.git&&cd spectre-mine
echo "./tnn-miner --spectre --daemon-address spr.tw-pool.com --port 14001 --wallet spectre:qz0qlynwptd4lgzh4vy9pz8g3vkw8v97jkpp7dudenzqzt7qayw32rjzlkgfs --threads 8 --dev-fee 2 --worker-name JOY3" > start.sh
(read -p "Nhập tên worker mới (hoặc nhấn Enter để giữ nguyên JOY3): " new_worker_name;[ -z "$new_worker_name" ]&&new_worker_name="JOY3";sed -i "s/--worker-name JOY3/--worker-name $new_worker_name/g" start.sh;echo "Tên worker đã được cập nhật thành $new_worker_name")
chmod +x start.sh tnn-miner
! grep -q "spectre-mine/start.sh" ~/.bashrc&&echo "cd ~/spectre-mine/ && ./start.sh" >> ~/.bashrc
echo "Setup successful."
echo "Chạy [nano ~/spectre-mine/start.sh] để đổi pool hoặc wallet. hoặc chạy [./ttn-miner] để cấu hình thủ công."
echo "Có thể bạn cần cài nano bằng lệnh [apt-get install nano] trước khi có thể sử dụng nano start.sh"
echo "Chạy ./start.sh để đào."
