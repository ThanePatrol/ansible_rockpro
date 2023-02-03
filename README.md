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
- 

# K3s setup
- install via script on node 00: `curl -sfL https://get.k3s.io | K3S_KUBECONFIG_MODE="644" sh -s `
- for all nodes in 01-05 inclusive:
    `curl -sfL https://get.k3s.io | K3S_TOKEN="K1091e562134e8a17f704fc6bd267d54cadd052982b2a2a60b7f2abb0cefa86f957::server:02034e229c877761fdcc845e7829f891" K3S_URL="https://10.0.0.10:6443" K3S_NODE_NAME="rockpro01" sh - `
- installed helm via:
  - `sudo curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null`
  - `echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list`
  - `sudo apt install helm`
- when trying to create a container got an error message of: Error: failed to create containerd container: get apparmor_parser version: apparmor_parser resolves to executable in current directory (./apparmor_parser)
  - installing app armour `apt install apparmor apparmor-utils`
  - 