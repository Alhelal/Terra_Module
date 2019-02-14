##Public EIP
resource "aws_eip" "Eip_Pub_Sub1" {
    vpc      = true
    tags {
      Name = "${var.env_name}:Pub_Sub1_Eip"
      Environment = "${var.env_name}"
  }
}
resource "aws_eip" "Eip_Pub_Sub2" {
    vpc      = true
    tags {
      Name = "${var.env_name}:Pub_Sub2_Eip"
      Environment = "${var.env_name}"
  }
}

## Net Gateway
resource "aws_nat_gateway" "Pub_Sub1_Ngw" {
    allocation_id = "${aws_eip.Eip_Pub_Sub1.id}"
    subnet_id = "${var.public-subnet1_id}"
    tags {
      Name = "${var.env_name}:Pub_Sub1_Ngw"
      Environment = "${var.env_name}"
  }
}
resource "aws_nat_gateway" "Pub_Sub2_Ngw" {
    allocation_id = "${aws_eip.Eip_Pub_Sub2.id}"
    subnet_id = "${var.public-subnet2_id}"
    tags {
      Name = "${var.env_name}:Pub_Sub2_Ngw"
      Environment = "${var.env_name}"
  }
}
