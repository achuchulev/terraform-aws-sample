# Build infrastructure on AWS with Terraform using modules and S3 remote backend for terraform state

### Terraform apply will create two EC2 instances on AWS that host httpd web server to show Subnet for Firewall

#### Prerequisites

- vagrant
- git
- AWS subscription
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

### Get the repo and run lab

```
git clone https://github.com/achuchulev/terraform-aws-sample.git
cd tterraform-aws-sample
vagrant up
```

Vagrant up will run `scripts/provision.sh` that will install:

- Terraform
- AWS CLI
- SSH Key Pair for vagrant user

## How to Build

#### ssh to vagrant box and go to repo folder

```
vagrant ssh
cd /vagrant
```

#### Configure AWS CLI

Run `aws configure` to setup _aws cli_ providing following information

```
AWS Access Key ID [None]: your_aws_access_key
AWS Secret Access Key [None]: your_aws_secret_access_key
Default region name [None]: us-east-2
Default output format [None]: json
```

#### Create S3 Bucket for remote backend

```
aws s3 mb s3://ac-terraform-remote-state
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

![Alt text](./pics/high_level_design.png?raw=true "High Level Design")

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
