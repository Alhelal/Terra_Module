provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "/home/asiddique.site/.aws/credentials"
#  profile                 = "${terraform.workspace}" 
  profile                 = "${lookup(var.credential, terraform.workspace)}" 
}

module "vpc_network" {
  source = "./modules/network/vpc/"
}
module "igw_network" {
  source = "./modules/network/igw/"
  vpc_id = "${module.vpc_network.vpc_id}"
}

module "route_table_network" {
  source = "./modules/network/route_table/"
  vpc_id = "${module.vpc_network.vpc_id}"
  igw_id = "${module.igw_network.igw_id}"
}
module "subnet_network" {
  source = "./modules/network/subnet/"
  vpc_id = "${module.vpc_network.vpc_id}"
  vpc_cidr_prefix = "${module.vpc_network.vpc_cidr_prefix}"
  vpc_cidr_mid = "${module.vpc_network.vpc_cidr_mid}"
  region = "${var.region}"
  public_rt_id = "${module.route_table_network.public_rt_id}"
  private_rt1a_id = "${module.route_table_network.private_rt1a_id}"
  private_rt1b_id = "${module.route_table_network.private_rt1b_id}"
}
module "ngw_network" {
  source = "./modules/network/ngw/"
  vpc_id = "${module.vpc_network.vpc_id}"
  public-subnet1_id = "${module.subnet_network.public_subnet1_id}"
  public-subnet2_id = "${module.subnet_network.public_subnet2_id}"
}

#key pair

resource "aws_key_pair" "Key_Pair" {
  key_name  ="${lookup(var.key_name, terraform.workspace)}"
  public_key = "${file(lookup(var.public_key_path, terraform.workspace))}"
}
