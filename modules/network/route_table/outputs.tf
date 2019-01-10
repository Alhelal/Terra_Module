output "public_rt_id" {
  description = "The ID of the Public Route Table"
  value       = "${aws_route_table.public_rt.id}"
}
output "private_rt1a_id" {
  description = "The ID of the Private Route Table"
  value       = "${aws_route_table.private_rt1a.id}"
}
output "private_rt1b_id" {
  description = "The ID of the Private Route Table"
  value       = "${aws_route_table.private_rt1b.id}"
}
