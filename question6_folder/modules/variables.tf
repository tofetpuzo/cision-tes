variable "compute_private_subnet" {
  type    = list
}

variable "data_private_subnet" {
  type    = list
}

variable "public_subnet" {
  type    = list
}
# AWS account region for user accounts
variable "region_utils" {
  type    = string
  default = "eu-north-1"
}

# AWS account region for prod account
variable "region_prod" {
  type    = string
  default = "eu-north-1"
}