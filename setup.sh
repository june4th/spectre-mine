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
apt update -y
apt install git wget build-essential cmake clang libssl-dev libudns-dev libc++-dev lld libsodium-dev
git clone https://github.com/Tritonn204/tnn-miner.git
cd tnn-miner
mkdir build
cd build
cmake ..
make
