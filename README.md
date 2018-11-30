# Build infrastructure on AWS with Terraform using modules and S3 remote backend for terraform state

### Terraform apply will create two EC2 instances on AWS that host httpd web server to show which Firewall Subnet is used

#### Prerequisites

- vagrant
- git
- virtualbox

#### AWS and Terraform knowledge requirements

- Storage Part: 
  - S3 Bucket
  - Random ID

- Networking Part: 
  - VPC, IGW, and Route Tables
  - Subnets, Security, and the Count Attribute

- Compute Part:
  - AMI Data, Key Pair, and the File Function
  - EC2 Instance
  - User Data and Template Files

- Root Module:
  - Terraform Outputs and the Join Function
  - Terraform Formatting and Remote State

#### Terraform code structure

```
.
├── compute
│   ├── main.tf
│   ├── outputs.tf
│   ├── userdata.tpl
│   └── variables.tf
├── main.tf
├── networking
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── outputs.tf
├── storage
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
├── terraform.tfvars
└── variables.tf
```

## Get the repo and run lab

```
git clone https://github.com/achuchulev/terraform-aws-sample.git
cd tterraform-aws-sample
vagrant up
```

Vagrant up will run `scripts/provision.sh` that will install:

- Terraform

## How to Build

#### ssh to vagrant box and go to repo folder

```
vagrant ssh
sudo su -
cd /vagrant
```

#### Create SSH key for current user

```
ssh-keygen
```

#### Export your AWS access credentials

```
export AWS_ACCESS_KEY_ID=your_aws_access_key
export AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
```

#### Initialize Terraform

```
terraform init
```

#### Deploy Environment

```
terraform plan
teraform apply
```

#### Destroy Environment

```
terraform destroy
```

### High Level Design

![Alt text](./high_level_design.png?raw=true "High Level Design")
