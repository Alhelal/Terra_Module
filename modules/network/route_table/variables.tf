## VPC Variables
variable "vpc_id" {
  description = "ID of the VPC to create subnet"
}
variable "igw_id" {
  description = "ID of your Internet Gateway"
}
variable "Pub_Sub1_Ngw_id" {
  description = "ID of your Net Gateway 1"
}
variable "Pub_Sub2_Ngw_id" {
  description = "ID of your Net Gateway 2"
}
variable "env_name" {}
