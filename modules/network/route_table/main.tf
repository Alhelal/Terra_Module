## Public Routetable
resource "aws_route_table" "public_rt" {
    vpc_id = "${var.vpc_id}"
    # Default route through Internet Gateway
    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${var.igw_id}"
    }
    tags {
      Name = "${var.env_name}:public_rt"
      Environment = "${var.env_name}"
      Type = "public"
    }
}
## Private Routetable
resource "aws_route_table" "private_rt1a" {
    vpc_id = "${var.vpc_id}"
    tags {
      Name = "${var.env_name}:private_rt1a"
      Environment = "${var.env_name}"
      Type = "private"
    }
}
resource "aws_route_table" "private_rt1b" {
    vpc_id = "${var.vpc_id}"
    tags {
      Name = "${var.env_name}:private_rt1b"
      Environment = "${var.env_name}"
      Type = "private"
    }
}
