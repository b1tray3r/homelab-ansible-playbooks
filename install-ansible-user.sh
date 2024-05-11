#!/bin/bash

# Install Ansible

sudo apt install git ansible -y

# Ask for the ansible user password

echo "Enter the ansible user password: "
read -s ANSIBLE_USER_PASSWORD

# Execute the playbook

ansible-pull -l localhost -U https://github.com/b1tray3r/homelab-ansible-playbooks.git -e "SEMAPHORE_PASSWORD=$ANSIBLE_USER_PASSWORD" install-ansible-user.yml
