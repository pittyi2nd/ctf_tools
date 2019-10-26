#!/bin/sh

# update
yes | sudo apt update
yes | sudo apt upgrade

# anaconda3
# wget https://repo.anaconda.com/archive/Anaconda3-2019.07-Linux-x86_64.sh
# bash Anaconda3-2019.07-Linux-x86_64.sh



# tools
yes | sudo apt install binutils
yes | sudo apt install git
yes | sudo apt install clang
yes | sudo apt install make
yes | sudo apt install cmake
yes | sudo apt install automake
yes | sudo apt install ruby
yes | sudo apt install openjdk-8-jdk
yes | sudo apt install openjdk-8-jre
yes | sudo apt install fish
yes | sudo apt install hexedit
yes | sudo apt install nasm
yes | sudo apt install upx
yes | sudo apt install basez
yes | sudo apt install john
yes | sudo apt install hydra
yes | sudo apt install wireshark
yes | sudo apt install nmap
yes | sudo apt install masscan
yes | sudo apt install sqlmap
yes | sudo apt install nikto
yes | sudo apt install whois
yes | sudo apt install traceroute
yes | sudo apt install aircrack-ng
yes | sudo apt install wifite
yes | sudo apt install binwalk
yes | sudo apt install foremost
yes | sudo apt install autopsy
yes | sudo apt install outguess
yes | sudo apt install steghide
yes | sudo apt install testdisk
yes | sudo apt install pngcheck

yes | sudo apt autoremove

sudo snap install code --classic

git clone https://github.com/radareorg/radare2.git
sudo radare2/sys/install.sh

git clone https://github.com/longld/peda.git ~/peda
echo source ~/peda/peda.py >> ~/.gdbinit

sudo chsh -s /usr/bin/fish
