#!/usr/bin/env bash

# Contains random odd bod setup items required, ansible setup, disabling NetworkManager

apt update
apt upgrade -y
apt install ansible -y

# Make sure to edit for specific IP address
nmcli con mod "Wired connection 1" ipv4.addresses 10.0.0.10/24 ipv4.gateway 10.0.0.1 ipv4.dns 10.0.0.1
systemctl restart NetworkManager

bash -c 'echo "PasswordAuthentication no" >> /etc/ssh/ssh_config.d/no_pass.conf'
ln -s /usr/bin/python3 /usr/bin/python
ansible-pull -U https://github.com/ThanePatrol/ansible_rockpro