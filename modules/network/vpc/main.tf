resource "aws_vpc" "vpc" {
  cidr_block = "${lookup(var.vpc_cidr_prefix, terraform.workspace)}.${lookup(var.vpc_cidr_mid, terraform.workspace)}.0/21"
  enable_dns_hostnames = true
  tags {
    Name = "${terraform.workspace}:VPC"
    Environment = "${terraform.workspace}"
  }
}
