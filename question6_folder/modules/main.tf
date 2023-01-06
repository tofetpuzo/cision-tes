# Prod account
provider "aws" {
  profile = "prod"
  region  = var.region_prod
  alias   = "prod"
}

terraform {
  backend "s3" {
    bucket = "2023-01-05"
    region = var.region_prod
  }
}
module "networking" {
  source                 = "./modules/networking"
  environments = var.environments
}


// module "security_groups" {
//   source   = "./modules/security_group"
//   vpc_id = module.networks.vpc_id
// }

output "vpc_id" {
  value = module.networks.vpc_id
}


