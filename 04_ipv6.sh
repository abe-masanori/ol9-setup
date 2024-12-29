#!/bin/bash -ux

sudo sed -i 's/^#AddressFamily .*$/AddressFamily inet/' /etc/ssh/sshd_config
sudo sed -i 's/^OPTIONS=.*$/OPTIONS="-F 2 -4"/' /etc/sysconfig/chronyd
sudo sed -i 's/^::1/#::1/' /etc/hosts
sudo grubby --update-kernel ALL --args ipv6.disable=1
