#!/bin/bash

# install terraform
which wget unzip &>/dev/null || {
  apt-get install -y wget unzip
}

which terraform &>/dev/null || {
  pushd /usr/local/bin
  sudo wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
  sudo unzip terraform_0.11.10_linux_amd64.zip
  popd
}
