#!/bin/bash

git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh

# install node
nvm install 0.10.21

# install other useful tools
npm install forever -g
npm install node-dev -g

rm -rf ~/tmp