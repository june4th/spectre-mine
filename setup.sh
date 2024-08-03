#!/bin/sh
apt-get update && apt-get upgrade -y
apt-get install wget -y
apt-get install proot -y
apt-get install git -y
cd ~
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ubuntu-in-termux
chmod +x ubuntu.sh
./ubuntu.sh -y
./startubuntu.sh
apt-get update -y
apt-get upgrade -y
apt-get install git wget build-essential cmake clang libssl-dev libudns-dev libc++-dev lld libsodium-dev
git clone https://github.com/Tritonn204/tnn-miner.git
cd tnn-miner
mkdir build
cd build
cmake ..
make
echo "./TNN_Miner --spectre --daemon-address spr.tw-pool.com --port 14001 --wallet spectre:qz053xfu5fknjyzlf2rsf2uz7fyvjjhgrurlv2lclqmufu4x4uzfq6gxyjsdd --dev-fee 2" > start.sh
chmod +x start.sh
if [ ! -f ~/.bashrc ]; then
  echo "cd ~/tnn-miner/build/ && sh start.sh" > ~/.bashrc
else
  if ! grep -Fxq "cd ~/tnn-miner/build/ && sh start.sh" ~/.bashrc; then
    echo "cd ~/tnn-miner/build/ && sh start.sh" >> ~/.bashrc
  fi
fi
