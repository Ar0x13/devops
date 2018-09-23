aws_profile = "default"
aws_region = "eu-central-1"

# VPC
vpc_cidr = "172.16.0.0/16"

# Subnet
public_subnet_cidr = "172.16.1.0/24"

# Security groups
sg_cidr = ["0.0.0.0/0"]

# NACL
nacl_cidr = "0.0.0.0/0"

# Centos 7 EC2 instance
ami = "ami-2882ddc3"
instance_type = "t2.nano"
