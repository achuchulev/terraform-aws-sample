# Build a sample infrastructure on AWS with Terraform

### The purpose of this repo is to show how to build resources on AWS with Terraform using modules and S3 remote backend for terraform state

#### Prerequisites

- vagrant
- git
- virtualbox

## Get the repo and run lab

```
git clone https://github.com/achuchulev/terraform-aws-sample.git
cd tterraform-aws-sample
vagrant up
```

Vagrant up will run `scripts/provision.sh` that will install:

- Terraform

## How to build

#### ssh to vagrant box and go to repo folder

```
vagrant ssh
sudo su -
cd /vagrant
```

#### Initialize terraform

```
terraform init
```

#### Deploy environment

```
terraform plan
teraform apply
```

