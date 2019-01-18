## VPC SETUP
variable "vpc_cidr_prefix" {
#  type = "map"
#  default = {
#    "Home_Prod" = "10.10"
#    "Home_Stg" = "10.10"
#    "Home_QA" = "10.10"
#    "Home_Dev" = "10.10"
#  }
}
variable "vpc_cidr_mid" {
#  type = "map"
#  default = {
#    "Home_Prod" = "0"
#    "Home_Stg" = "8"
#    "Home_QA" = "16"
#    "Home_Dev" = "24"
#  }
}
variable "env_name" {}
