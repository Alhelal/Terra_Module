resource "aws_vpc" "vpc" {
  cidr_block = "${var.vpc_cidr_prefix}.${var.vpc_cidr_mid}.0/21"
  enable_dns_hostnames = true
  tags {
    Name = "${var.env_name}:VPC"
    Environment = "${var.env_name}"
  }
}
