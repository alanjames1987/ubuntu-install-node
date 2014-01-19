#!/bin/bash

apt-get update

apt-get -y dist-upgrade

apt-get install -y git-core htop imagemagick make pure-ftpd python-software-properties ssh vim

apt-get install -y curl libcurl3 libcurl3-dev

apt-get -y autoclean 
apt-get -y autoremove

apt-get install -y mongodb

apt-get install -y g++ iptables-persistent

# configure ip tables for port redirect
iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000
iptables-save > /etc/iptables/rules.v4

apt-get -y autoclean 
apt-get -y autoremove