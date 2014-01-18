#!/bin/bash

sudo apt-get update && sudo apt-get -y dist-upgrade && sudo apt-get install -y git-core htop imagemagick make pure-ftpd python-software-properties ssh vim && sudo apt-get install -y curl libcurl3 libcurl3-dev && sudo apt-get -y autoclean && sudo apt-get -y autoremove

sudo apt-get install -y mongodb

sudo apt-get install -y g++ iptables-persistent

# configure ip tables for port redirect
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 3000
sudo su
iptables-save > /etc/iptables/rules.v4
exit

sudo apt-get -y autoclean && sudo apt-get -y autoremove