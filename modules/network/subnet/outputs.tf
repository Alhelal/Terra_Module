output "public_subnet1_id" {
  description = "The ID of the Public Subnet1"
  value       = "${aws_subnet.public-subnet1.id}"
}
output "public_subnet2_id" {
  description = "The ID of the Public Subnet2"
  value       = "${aws_subnet.public-subnet2.id}"
}
output "public_subnet1_cidr_block" {
  description = "The Cidr block of Public Subnet1"
  value       = "${aws_subnet.public-subnet1.cidr_block}"
}
output "public_subnet2_cidr_block" {
  description = "The Cidr block of Public Subnet2"
  value       = "${aws_subnet.public-subnet2.cidr_block}"
}
output "private_subnet1_id" {
  description = "The ID of the Private Subnet1"
  value       = "${aws_subnet.private-subnet1.id}"
}
output "private_subnet2_id" {
  description = "The ID of the Private Subnet2"
  value       = "${aws_subnet.private-subnet2.id}"
}
output "private_subnet3_id" {
  description = "The ID of the Private Subnet3"
  value       = "${aws_subnet.private-subnet3.id}"
}
output "private_subnet4_id" {
  description = "The ID of the Private Subnet4"
  value       = "${aws_subnet.private-subnet4.id}"
}
output "private_subnet1_cidr_block" {
  description = "The Cidr block of Private Subnet1"
  value       = "${aws_subnet.private-subnet1.cidr_block}"
}
output "private_subnet2_cidr_block" {
  description = "The Cidr block of Private Subnet2"
  value       = "${aws_subnet.private-subnet2.cidr_block}"
}
output "private_subnet3_cidr_block" {
  description = "The Cidr block of Private Subnet3"
  value       = "${aws_subnet.private-subnet3.cidr_block}"
}
output "private_subnet4_cidr_block" {
  description = "The Cidr block of Private Subnet4"
  value       = "${aws_subnet.private-subnet4.cidr_block}"
}
