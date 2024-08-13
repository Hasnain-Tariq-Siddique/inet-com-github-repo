###################################################################################
# AWS Cloud network deployment using Terraform script                             #
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc #
###################################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # This code block is to store Terraform state file in Terraform Cloud.
  /*
  cloud {
    organization = "inetsystemsinc_aws_dev"

    workspaces {
      name = "inetsystemsinc_aws_iac_com_code"
    }
  }
  */

  #Terraform state file stored in S3 bucket

  backend "s3" {
    bucket = "infra-automation-state-file"
    key    = "com-terraform-state-file"
    region = "us-east-1"
  }

}

# *** We are not going to use the Service Principal credentials in the code here since we are using CodeCommit Pipeline now. *** #
provider "aws" {
  region = "us-east-1"
  #access_key = var.access_key
  #secret_key = var.secret_key
}

##############################################################
# End of AWS Cloud network deployment using Terraform script #
##############################################################




