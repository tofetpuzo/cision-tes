# Prod account
provider "aws" {
  version = "~> 2.49"
  profile = "prod"
  region  = var.region_prod
  alias   = "prod"
}

terraform {
  required_version = ">= 1.1.7"
  backend "s3" {
    bucket = "cision-test"
    region = "us-west-1"
  }
}

module "networks" {
  source   = "./modules/networking"
  public_subnet =  var.public_subnet
  compute_private_subnet = var.compute_private_subnet
  data_private_subnet = var.data_private_subnet
}


// module "security_groups" {
//   source   = "./modules/security_group"
//   vpc_id = module.networks.vpc_id
// }

output "vpc_id" {
  value = module.networks.vpc_id
}

module "data" {
  source = "./modules/data"
  value = module.data.provider
  
}

