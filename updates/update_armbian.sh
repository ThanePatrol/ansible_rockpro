#!/usr/bin/env bash
echo "Pulling from git to update"
ansible-pull -U https://github.com/ThanePatrol/ansible_rockpro.git update_armbian.yml
echo "Done"