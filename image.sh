#!/usr/bin/zsh

echo "Starting image"
install_cmd="xzcat Armbian_22.11.1_Rockpro64_jammy_current_5.15.80.img.xz | sudo dd of=/dev/mmcblk2 bs=1M status=progress conv=fsync"

echo "$install_cmd"
eval "$install_cmd"
