#!/bin/bash

wget https://apt.puppetlabs.com/puppetlabs-release-pc1-jessie.deb
sudo dpkg -i puppetlabs-release-pc1-jessie.deb
sudo apt-get -y update
sudo apt-get -y install puppet-agent
sudo /opt/puppetlabs/bin/puppet agent --enable
sudo service puppet start
