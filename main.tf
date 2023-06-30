terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
      region = var.region
    }
  }
}


module "s3-webapp" {
  #source  = "app.terraform.io/nikanand04/s3-webapp/aws"
  source  = "app.terraform.io/hashicorp_demos/s3-webapp/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}
