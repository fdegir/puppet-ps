#!/bin/bash

sudo yum -y update
sudo yum -y install epel-release
sudo rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
sudo yum -y install puppet-agent
sudo systemctl start puppet
sudo systemctl enable puppet
