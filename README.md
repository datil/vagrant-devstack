vagrant-devstack
================

Test OpenStack in your development environment using [Devstack](http://devstack.org/) and [Vagrant](http://www.vagrantup.com/).

# Requirements
* Windows, Linux or OS X operating system
* Install [VirtualBox](https://www.virtualbox.org/)
* Install [Vagrant](http://www.vagrantup.com/)

# Running the environment

Running the environment for the first time may take a while. It will download and install Devstack which has a large set of dependencies.

```
$ git clone https://github.com/datilmedia/vagrant-devstack.git
$ cd vagrant-devstack
$ vagrant up
```

# To-do
* Migrate shell provision script to Puppet
* Devstack testing guide
