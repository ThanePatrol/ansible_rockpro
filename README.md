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


# Setup steps
- boot via sd card
- ssh to it via hugh@192.168.1.136 (double check IP)
- copy Armbian image to the drive 
- identify emmc with lsblk - usually `/dev/mmcblk2`
- Run `image.sh`
- `xzcat imagename.img.xz | sudo dd of=/dev/mmcblk2 bs=1M status=progress conv=fsync`
- reboot
- install os
- create username of hugh
- ~~update board firmware with sudo armbian-config~~ 
- create setup.sh file
- `chmod +x setup.sh`
- `sudo ./setup.sh`
- add to desktop .ssh/config file
- ssh-copy-id keys to remote
- change root password and user password to something secure in keepass via `passwd`

# K3s setup


# OpenBSD Router setup
- 