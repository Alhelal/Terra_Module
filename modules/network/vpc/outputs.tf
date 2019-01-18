output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${aws_vpc.vpc.id}"
}
output "vpc_cidr_prefix_value" {
  description = "The first two section of the VPC Cidr"
  #value       = "${lookup(var.vpc_cidr_prefix, terraform.workspace)}"
  value       = "${var.vpc_cidr_prefix}"
}
output "vpc_cidr_mid_value" {
  description = "The middle octet section of the VPC Cidr"
  #value       = "${lookup(var.vpc_cidr_mid, terraform.workspace)}"
  value       = "${var.vpc_cidr_mid}"
}
