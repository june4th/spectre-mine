#!/bin/sh
yes | pkg update && pkg upgrade
yes | pkg install git wget proot
cd ~
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
if [ ! -f ~/.bashrc ]; then
  echo "cd ~/ubuntu-in-termux/ && ./startubuntu.sh" > ~/.bashrc
else
  if ! grep -Fxq "cd ~/ubuntu-in-termux/ && ./startubuntu.sh" ~/.bashrc; then
    echo "cd ~/ubuntu-in-termux/ && ./startubuntu.sh" >> ~/.bashrc
  fi
fi
cd ubuntu-in-termux
chmod +x ubuntu.sh
./ubuntu.sh -y
./startubuntu.sh
apt-get update -y
apt-get upgrade -y
apt-get install git -y
git clone https://github.com/june4th/spectre-mine.git
cd spectre-mine
echo "./tnn-miner --spectre --daemon-address spr.tw-pool.com --port 14001 --wallet spectre:qz0qlynwptd4lgzh4vy9pz8g3vkw8v97jkpp7dudenzqzt7qayw32rjzlkgfs --threads 8 --dev-fee 2 --worker-name JOY3" > start.sh
chmod +x start.sh
chmod +x tnn-miner
if [ ! -f ~/.bashrc ]; then
  echo "cd ~/spectre-mine/ && ./start.sh" > ~/.bashrc
else
  if ! grep -Fxq "cd ~/spectre-mine/ && ./start.sh" ~/.bashrc; then
    echo "cd ~/spectre-mine/ && ./start.sh" >> ~/.bashrc
  fi
fi
echo "Setup successful."
echo "Run [nano ~/spectre-mine/start.sh] to change pool and wallet. or run [./ttn-miner] to open wizard import."
echo "Maybe you need install nano to edit the file by the way run [apt-get install nano] before edit start.sh"
echo "Run ./start.sh to mine."
