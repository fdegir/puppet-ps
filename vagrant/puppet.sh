#!/bin/bash

sudo yum -y update
sudo yum -y install epel-release
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum -y install puppetserver
sudo rm -rf /etc/puppetlabs/code
sudo ln -s /puppet_code /etc/puppetlabs/code
sudo rm -rf /etc/puppetlabs/puppetserver
sudo ln -s /puppet_puppetserver /etc/puppetlabs/puppetserver
sudo sed -i 's/2g/512m/g' /etc/sysconfig/puppetserver
echo "*.example.com" | sudo tee --append /etc/puppetlabs/puppet/autosign.conf > /dev/null
sudo systemctl start puppetserver
sudo systemctl enable puppetserver
