output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${module.vpc_network.vpc_id}"
}
output "vpc_cidr_block" {
  description = "VPC Cidr block"
  value       = "${var.vpc_cidr_block}"
}

output "public_subnet1_id" {
  description = "The ID of the Public Subnet1"
  value       = "${module.subnet_network.public_subnet1_id}"
}
output "public_subnet2_id" {
  description = "The ID of the Public Subnet2"
  value       = "${module.subnet_network.public_subnet2_id}"
}
output "public_subnet1_cidr_block" {
  description = "The Cidr block of Public Subnet1"
  value       = "${module.subnet_network.public_subnet1_cidr_block}"
}
output "public_subnet2_cidr_block" {
  description = "The Cidr block of Public Subnet2"
  value       = "${module.subnet_network.public_subnet2_cidr_block}"
}
output "private_subnet1_id" {
  description = "The ID of the Private Subnet1"
  value       = "${module.subnet_network.private_subnet1_id}"
}
output "private_subnet2_id" {
  description = "The ID of the Private Subnet2"
  value       = "${module.subnet_network.private_subnet2_id}"
}
output "private_subnet3_id" {
  description = "The ID of the Private Subnet3"
  value       = "${module.subnet_network.private_subnet3_id}"
}
output "private_subnet4_id" {
  description = "The ID of the Private Subnet4"
  value       = "${module.subnet_network.private_subnet4_id}"
}
output "private_subnet1_cidr_block" {
  description = "The Cidr block of Private Subnet1"
  value       = "${module.subnet_network.private_subnet1_cidr_block}"
}
output "private_subnet2_cidr_block" {
  description = "The Cidr block of Private Subnet2"
  value       = "${module.subnet_network.private_subnet2_cidr_block}"
}
output "private_subnet3_cidr_block" {
  description = "The Cidr block of Private Subnet3"
  value       = "${module.subnet_network.private_subnet3_cidr_block}"
}
output "private_subnet4_cidr_block" {
  description = "The Cidr block of Private Subnet4"
  value       = "${module.subnet_network.private_subnet4_cidr_block}"
}
