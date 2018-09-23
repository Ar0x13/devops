# Credentials
variable "aws_region" {}
variable "aws_profile" {}

# VPC
variable "vpc_cidr" {
    description = "CIDR for the whole VPC"
}

# Subnets 
variable "public_subnet_cidr" {
    description = "CIDR for the Public Subnet"
}


# Security groups
variable "sg_cidr" {
    type = "list"
    }

# NACL
variable "nacl_cidr" {}





# # EC2 instance
# # aws  ec2 describe-images --owners aws-marketplace --query 'Images[*].[VirtualizationType,Name,ImageId]' \
# # --filters Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce --output table

# aws ec2 describe-images \
#     --owners 'aws-marketplace' \
#     --filters 'Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce' \
#     --query 'sort_by(Images, &CreationDate)[-1].[ImageId]' \
#     --output 'text'


variable "ami" {
    description = "CentOS Linux 7 x86_64 HVM EBS ENA 1805_01"
}
variable "instance_type" {} 