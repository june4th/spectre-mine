#!/bin/sh
#cd ~/ubuntu-in-termux && ./startubuntu.sh
cd ~/spectre-mine
git pull origin/master tnn-miner --force
./start.sh
