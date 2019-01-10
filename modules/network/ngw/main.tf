##Public EIP
resource "aws_eip" "Eip_Pub_Sub1" {
    vpc      = true
    tags {
      Name = "${terraform.workspace}:Pub_Sub1_Eip"
      Environment = "${terraform.workspace}"
  }
}
resource "aws_eip" "Eip_Pub_Sub2" {
    vpc      = true
    tags {
      Name = "${terraform.workspace}:Pub_Sub2_Eip"
      Environment = "${terraform.workspace}"
  }
}

## Net Gateway
resource "aws_nat_gateway" "Pub_Sub1_Ngw" {
    allocation_id = "${aws_eip.Eip_Pub_Sub1.id}"
    subnet_id = "${var.public-subnet1_id}"
#    depends_on = "${aws_internet_gateway.igw}"
    tags {
      Name = "${terraform.workspace}:Pub_Sub1_Ngw"
      Environment = "${terraform.workspace}"
  }
}
resource "aws_nat_gateway" "Pub_Sub2_Ngw" {
    allocation_id = "${aws_eip.Eip_Pub_Sub2.id}"
    subnet_id = "${var.public-subnet2_id}"
#    depends_on = "${aws_internet_gateway.igw}"
    tags {
      Name = "${terraform.workspace}:Pub_Sub2_Ngw"
      Environment = "${terraform.workspace}"
  }
}
