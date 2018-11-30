#!/bin/bash

# install AWS CLI

which awscli &>/dev/null || {
  sudo apt-get update
  sudo apt-get install awscli -y
}

# install Terraform
which wget unzip &>/dev/null || {
    sudo apt-get install -y wget unzip
}

which terraform &>/dev/null || {
  pushd /usr/local/bin
  sudo wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
  sudo unzip terraform_0.11.10_linux_amd64.zip
  popd
}

# generate new ssh key for vagrant user

cat /dev/zero | ssh-keygen -q -N ""
