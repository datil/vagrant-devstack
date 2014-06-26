#!/bin/bash

# Dependencies
sudo apt-get -qqy update
sudo apt-get install -qqy git
cd /home/vagrant

# Get latest Devstack source code
git clone https://github.com/openstack-dev/devstack.git

# Setup a basic configuration
cd devstack
echo '[[local|localrc]]' > local.conf
echo ADMIN_PASSWORD=password >> local.conf
echo MYSQL_PASSWORD=password >> local.conf
echo RABBIT_PASSWORD=password >> local.conf
echo SERVICE_PASSWORD=password >> local.conf
echo SERVICE_TOKEN=tokentoken >> local.conf

# Run Devstack for the first time
./stack.sh

# References
# Devstack. Running a Cloud in a VM. http://devstack.org/guides/single-vm.html
# Devstack. Configuration. http://devstack.org/configuration.html




