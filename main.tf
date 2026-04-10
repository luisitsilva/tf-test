## PUT TERRAFORM CLOUD BLOCK HERE!  ##

terraform {
  cloud {
    organization = "flashintell_luissilva"

    workspaces {
      name = "tfcloudiacflash"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.20.0"
    }
  }
}

# Variable blocks directly within the main.tf. No arguments necessary.
variable "region" {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  region     = var.region 
}

# Add .gitignore file in this directory with the terraform.tfvars
resource "aws_instance" "tc_instance" {
  ami           = "ami-02f986bab3de34d0d"
  instance_type = "t3.micro"

  tags = {
    Name = "TC-triggered-instance"
    State = "Updates"
  }
}

resource "aws_iam_user" "pedro" {
  name = "Pedro"
}

resource "aws_iam_user" "joao" {
  name = "Joao"
}

resource "aws_iam_user" "Antonio" {
  name = "Antonio"
}

resource "aws_iam_user" "loja1" {
  name = "Loja1"
}

resource "aws_iam_user" "casas0" {
  name = "casas0"
}

resource "aws_iam_user" "casas1" {
  name = "casas1"
}