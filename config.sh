#!/bin/sh
#cd ~/ubuntu-in-termux && ./startubuntu.sh
cd ~/spectre-mine
git pull origin main --force
chmod +x tnn-miner
rm setup.sh
rm config.sh
rm README.md
./start.sh
