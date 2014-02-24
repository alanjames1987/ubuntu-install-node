#!/bin/bash

apt-get update
apt-get -y dist-upgrade

# install useful software
apt-get install -y curl g++ git-core htop imagemagick iptables-persistent libcurl3 libcurl3-dev make mongodb pure-ftpd python-software-properties ssh vim

# configure ip tables for port redirect from 3000 to 80
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000

# configure ip tables for port redirect from 3001 to 443
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT --to-port 3001

# save the port redirect configuration
iptables-save > /etc/iptables/rules.v4

apt-get -y autoclean 
apt-get -y autoremove

echo 'to continue the installation run install-nosu.sh'
echo 'use: ./install-nosu.sh'