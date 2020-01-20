#!/bin/bash
if [ -f /etc/debian_version ]; then
  sudo apt-get update
  sudo apt-get install -y git python3-pip python3-dev
elif [ -f /etc/centos-release ]; then
  yum install -y epel-release
  yum install -y net-tools git python3-pip python3-devel
fi
sudo pip3 install ansible
/usr/local/bin/ansible-playbook -i "localhost," -c local /vagrant/playbook.yml
