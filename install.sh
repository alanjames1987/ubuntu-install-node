#!/bin/bash

sudo apt-get update && sudo apt-get -y dist-upgrade && sudo apt-get install -y git-core htop imagemagick make pure-ftpd python-software-properties ssh vim && sudo apt-get install -y curl libcurl3 libcurl3-dev && sudo apt-get -y autoclean && sudo apt-get -y autoremove

sudo apt-get install -y mongodb

sudo apt-get install -y g++

git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh

nvm install 0.10.21

npm install forever -g
npm install node-dev -g

echo 'export PATH=$PATH:/home/adminuser/.nvm/v0.10.21/bin/' >> ~/.bashrc
echo 'alias sudo="sudo env PATH=$PATH"' >> ~/.bashrc

sudo apt-get -y autoclean && sudo apt-get -y autoremove