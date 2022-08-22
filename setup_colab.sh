#!/usr/bin/env bash

apt-get -qq update
apt-get -qq install -y xvfb
wget -q https://raw.githubusercontent.com/mhd-medfa/IU-Reinforcement-Learning-22-lab/main/xvfb -O ../xvfb

# Download & import Atari ROMs (Colab stopped bundling them around the beginning of June 2021)

gdown -q https://drive.google.com/uc?id=1wYEhsBbh3hc2tek9-Afj9BHSa7_WJkV8

# Alternative download:
# wget -q http://www.atarimania.com/roms/Roms.rar

pip install -q unrar
apt install python-opengl
apt install ffmpeg
apt install xvfb
pip install pyvirtualdisplay
mkdir ./roms
unrar x Roms.rar ./roms > /dev/null 2>&1
python -m atari_py.import_roms ./roms > /dev/null 2>&1
