#terraform.tfvars  contain values for the declared variables
#variables.tf is the representation of those variables in Terraform format
#main.tf is the actual script that provisions an infrastructure

provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
  
}


