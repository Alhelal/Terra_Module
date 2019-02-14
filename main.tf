provider "aws" {
  region = "${var.region}"
  shared_credentials_file = "${var.credentials_path}"
  profile                 = "${var.profile}" 
}

module "vpc_network" {
  source = "./modules/network/vpc/"
  vpc_cidr_prefix = "${var.vpc_cidr_prefix}"
  vpc_cidr_mid = "${var.vpc_cidr_mid}"
  env_name = "${var.env_name}"
}
module "igw_network" {
  source = "./modules/network/igw/"
  vpc_id = "${module.vpc_network.vpc_id}"
  env_name = "${var.env_name}"
}

module "route_table_network" {
  source = "./modules/network/route_table/"
  vpc_id = "${module.vpc_network.vpc_id}"
  igw_id = "${module.igw_network.igw_id}"
  Pub_Sub1_Ngw_id = "${module.ngw_network.Pub_Sub1_Ngw_id}"
  Pub_Sub2_Ngw_id = "${module.ngw_network.Pub_Sub2_Ngw_id}"
  env_name = "${var.env_name}"
}
module "subnet_network" {
  source = "./modules/network/subnet/"
  vpc_id = "${module.vpc_network.vpc_id}"
  vpc_cidr_prefix = "${module.vpc_network.vpc_cidr_prefix_value}"
  vpc_cidr_mid = "${module.vpc_network.vpc_cidr_mid_value}"
  region = "${var.region}"
  public_rt_id = "${module.route_table_network.public_rt_id}"
  private_rt1a_id = "${module.route_table_network.private_rt1a_id}"
  private_rt1b_id = "${module.route_table_network.private_rt1b_id}"
  env_name = "${var.env_name}"
}
module "ngw_network" {
  source = "./modules/network/ngw/"
  vpc_id = "${module.vpc_network.vpc_id}"
  public-subnet1_id = "${module.subnet_network.public_subnet1_id}"
  public-subnet2_id = "${module.subnet_network.public_subnet2_id}"
  env_name = "${var.env_name}"
}

#key pair

resource "aws_key_pair" "Key_Pair" {
  key_name  ="${var.key_name}"
  public_key = "${file(var.public_key_path)}"
}
