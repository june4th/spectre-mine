#!/bin/sh
#cd ~/ubuntu-in-termux && ./startubuntu.sh
cd ~/spectre-mine
git pull origin main --force
chmod +x tnn-miner
./start.sh
