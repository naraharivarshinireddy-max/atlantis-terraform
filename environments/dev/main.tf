terraform {
  backend "s3" {
    bucket         = "atlantis-terraform-state-project"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "atlantis-terraform-locks"
  }
}

provider "aws" {
  region = var.region
}

module "ec2" {

  source = "../../modules/ec2"

  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  name = "atlantis-server-v2"
}