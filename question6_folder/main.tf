# Prod account
provider "aws" { 
  profile = "prod"
  region  = var.region_prod
  alias   = "prod"
}


module "networking" {
  source   = "./cision/cision_questions/question6_folder/modules/networking"
  public_subnet =  var.public_subnet
  compute_private_subnet = var.compute_private_subnet
  data_private_subnet = var.data_private_subnet
}


// module "security_groups" {
//   source   = "./modules/security_group"
//   vpc_id = module.networks.vpc_id
// }

terraform {
  backend "s3" {
    bucket = "cision-test"
    region = "us-west-1"
  }
}
output "vpc_id" {
  value = module.networks.vpc_id
}


