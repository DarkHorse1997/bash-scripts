#!/bin/bash

echo "Getting Microsoft Repository key"

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

echo "Installing Visual Studio Code"
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code
echo "Installed Visual Studio Code"

echo "Installing Calibre"
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
echo "Installed Calibre"

echo "Getting Miniconda"
wget -nv https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
echo "Installed Conda"

echo "Install Stacer"
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install stacer

echo "Install Google Chrome"
# No Google repo available, only .deb packages
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome*.deb

echo "Install Okular"
sudo apt-get install okular

echo "Installing uGet"
sudo add-apt-repository ppa:plushuang-tw/uget-stable 
sudo apt update 
sudo apt install uget aria2

echo "Installing uget-integrator"
sudo add-apt-repository ppa:uget-team/ppa
sudo apt update
sudo apt install uget-integrator


echo "Installing KDE Connect"
sudo add-apt-repository ppa:webupd8team/indicator-kdeconnect
sudo apt update
sudo apt install kdeconnect indicator-kdeconnect

echo "Installing Vivaldi Browser"
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main' 
sudo apt update && sudo apt install vivaldi-stable

echo "Installing mpv"
sudo add-apt-repository ppa:mc3man/mpv-tests
sudo apt update
sudo apt-get install mpv

