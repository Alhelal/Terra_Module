## Public Subnet 
resource "aws_subnet" "public-subnet1" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid + 0}.0/24"
  availability_zone = "${var.region}a"
  tags {
    Name = "${terraform.workspace}:Pub_Sub1"
    Environment = "${terraform.workspace}"
    Type = "public"
  }
}
resource "aws_subnet" "public-subnet2" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid + 1}.0/24"
  availability_zone = "${var.region}b"
  tags {
    Name = "${terraform.workspace}:Pub_Sub2"
    Environment = "${terraform.workspace}"
    Type = "public"
  }
}
## Private Subnet
resource "aws_subnet" "private-subnet1" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid + 2}.0/24"
  availability_zone = "${var.region}a"
  tags {
    Name = "${terraform.workspace}:Prv_Sub1"
    Environment = "${terraform.workspace}"
    Type = "private"
  }
}
resource "aws_subnet" "private-subnet2" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid + 3}.0/24"
  availability_zone = "${var.region}b"
  tags {
    Name = "${terraform.workspace}:Prv_Sub2"
    Environment = "${terraform.workspace}"
    Type = "private"
  }
}
resource "aws_subnet" "private-subnet3" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid + 4}.0/24"
  availability_zone = "${var.region}a"
  tags {
    Name = "${terraform.workspace}:Prv_Sub3"
    Environment = "${terraform.workspace}"
    Type = "private"
  }
}
resource "aws_subnet" "private-subnet4" {
  vpc_id = "${var.vpc_id}"
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid + 5}.0/24"
  availability_zone = "${var.region}b"
  tags {
    Name = "${terraform.workspace}:Prv_Sub4"
    Environment = "${terraform.workspace}"
    Type = "private"
  }
}
## Route table associations
resource "aws_route_table_association" "public_assoc1" {
  subnet_id = "${aws_subnet.public-subnet1.id}"
  route_table_id = "${var.public_rt_id}"
}
resource "aws_route_table_association" "public_assoc2" {
  subnet_id = "${aws_subnet.public-subnet2.id}"
  route_table_id = "${var.public_rt_id}"
}

resource "aws_route_table_association" "private1a-assoc1" {
  subnet_id = "${aws_subnet.private-subnet1.id}"
  route_table_id = "${var.private_rt1a_id}"
}
resource "aws_route_table_association" "private1a-assoc2" {
  subnet_id = "${aws_subnet.private-subnet3.id}"
  route_table_id = "${var.private_rt1a_id}"
}
resource "aws_route_table_association" "private1b-assoc1" {
  subnet_id = "${aws_subnet.private-subnet2.id}"
  route_table_id = "${var.private_rt1b_id}"
}
resource "aws_route_table_association" "private1b-assoc2" {
  subnet_id = "${aws_subnet.private-subnet4.id}"
  route_table_id = "${var.private_rt1b_id}"
}
