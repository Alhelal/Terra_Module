## Public Routetable
resource "aws_route_table" "public_rt" {
    vpc_id = "${var.vpc_id}"
    # Default route through Internet Gateway
    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${var.igw_id}"
    }
    tags {
      Name = "${terraform.workspace}:public_rt"
      Environment = "${terraform.workspace}"
      Type = "public"
    }
}
## Private Routetable
resource "aws_route_table" "private_rt1a" {
    vpc_id = "${var.vpc_id}"
    tags {
      Name = "${terraform.workspace}:private_rt1a"
      Environment = "${terraform.workspace}"
      Type = "private"
    }
}
resource "aws_route_table" "private_rt1b" {
    vpc_id = "${var.vpc_id}"
    tags {
      Name = "${terraform.workspace}:private_rt1b"
      Environment = "${terraform.workspace}"
      Type = "private"
    }
}
