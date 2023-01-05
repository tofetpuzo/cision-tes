variable "compute_private_subnet" {
  type    = list
}

variable "data_private_subnet" {
  type    = list
}

variable "public_subnet" {
  type    = list
}

# AWS account region for prod account
variable "region_prod" {
  type    = string
  default = "us-east-1"
}