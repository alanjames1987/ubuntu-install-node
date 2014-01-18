#!/bin/bash

sudo apt-get update && sudo apt-get -y dist-upgrade && sudo apt-get install -y git-core htop imagemagick make pure-ftpd python-software-properties ssh vim && sudo apt-get install -y curl libcurl3 libcurl3-dev && sudo apt-get -y autoclean && sudo apt-get -y autoremove

sudo apt-get install -y mongodb

sudo apt-get install -y g++ iptables-persistent

# configure ip tables for port redirect
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000
sudo su
iptables-save > /etc/iptables/rules.v4
exit

git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh

# install node
nvm install 0.10.21

# install other useful tools
npm install forever -g
npm install node-dev -g

sudo apt-get -y autoclean && sudo apt-get -y autoremove

rm -rf ~/tmp