#!/bin/sh
#cd ~/ubuntu-in-termux && ./startubuntu.sh
cd ~/spectre-mine
git checkout origin/main tnn-miner --force
chmod +x tnn-miner
./start.sh
