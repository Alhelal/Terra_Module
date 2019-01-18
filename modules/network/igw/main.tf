## IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = "${var.vpc_id}"
  tags {
    Name = "${var.env_name}:igw"
    Environment = "${var.env_name}"
  }
}
