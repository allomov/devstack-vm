#!/bin/sh

sudo apt-get install -y python-pip && sudo pip install --upgrade prettytable
cd devstack; sudo -u vagrant env HOME=/home/vagrant ./stack.sh
ovs-vsctl add-port br-ex eth2
sudo pvcreate /dev/sdb
sudo vgextend stack-volumes /dev/sdb
sudo vgreduce stack-volumes /dev/loop0