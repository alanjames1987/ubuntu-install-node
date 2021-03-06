#!/bin/bash

git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh

echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc
echo 'source ~/.nvm/nvm.sh' >> ~/.profile

# install node
nvm install 0.12.4

nvm alias default 0.12.4

# install other useful tools
npm install forever -g
npm install node-dev -g
npm install node-inspector -g
npm install pm2 -g

rm -rf ~/tmp

echo 'please restart your server to complete the installation'
echo 'use: sudo shutdown -r now'