#DevOps #Atlantis #Terraform #InfrastructureAsCode #IaC
provider "aws" {
  region = "ap-south-1"
}

resource "null_resource" "example" {}
