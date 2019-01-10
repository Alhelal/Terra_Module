output "Pub_Sub1_Ngw_id" {
  description = "The ID of the Public net GateWay 1"
  value       = "${aws_nat_gateway.Pub_Sub1_Ngw.id}"
}
output "Pub_Sub2_Ngw_id" {
  description = "The ID of the Public Net GateWay 2"
  value       = "${aws_nat_gateway.Pub_Sub1_Ngw.id}"
}

