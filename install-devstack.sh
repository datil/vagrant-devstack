#!/bin/bash
# http://devstack.org/guides/single-vm.html

sudo apt-get -qqy update
sudo apt-get install -qqy git
cd /home/vagrant
git clone https://github.com/openstack-dev/devstack.git
cd devstack
echo '[[local|localrc]]' > local.conf
echo ADMIN_PASSWORD=password >> local.conf
echo MYSQL_PASSWORD=password >> local.conf
echo RABBIT_PASSWORD=password >> local.conf
echo SERVICE_PASSWORD=password >> local.conf
echo SERVICE_TOKEN=tokentoken >> local.conf
./stack.sh




