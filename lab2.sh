#!/bin/bash

sudo apt install npm
mkdir -p hmwk && cd hmwk
git clone https://github.com/popcorn-official/popcorn-desktop

cd popcorn-desktop
dir
chmod 777 make_popcorn.sh
./make_popcorn.sh
