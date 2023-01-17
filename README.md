# ansible_rockpro
Ansible playbook for configuration of Pine RockPro64

Assumes username of hugh

# Done
- Docker install
- btop
- zsh
- oh-my-zsh
- curl
- batcat
- rclone
- tmux

# todo
- set up docker to start on system boot


# Manual steps
- install os
- create username
- Install ansible
- add to desktop .ssh/config file
- ssh-copy-id keys to remote
- disable password login in /etc/ssh/sshd_config
- change root password and user password to something secure in keepass

# Steps to pull onto device
`ansible-pull -U https://github.com/ThanePatrol/ansible_rockpro`