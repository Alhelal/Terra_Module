variable "region" {
  description = "AWS Region"
}
## VPC Variables
variable "vpc_id" {
  description = "ID of the VPC to create subnet"
}
variable "vpc_cidr_prefix" {
  description = "First 2 section of the VPC Cidr to create "
}
variable "vpc_cidr_mid" {
  description = "Middle octet of the VPC Cidr to create "
}
## Route Table
variable "public_rt_id" {
  description = "ID of the Public Route Table"
}
variable "private_rt1a_id" {
  description = "ID of the Private Route Table"
}
variable "private_rt1b_id" {
  description = "ID of the Private Route Table"
}
variable "env_name" {}
