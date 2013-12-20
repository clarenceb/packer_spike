#!/bin/bash -eux

# Based on script at https://github.com/misheska/basebox-packer/blob/master/template/centos/script/sshd.sh

echo "UseDNS no" >> /etc/ssh/sshd_config
