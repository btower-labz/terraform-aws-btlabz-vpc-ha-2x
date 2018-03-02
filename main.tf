module "main_vpc" {
  source   = "github.com/btower-labz/terraform-aws-btlabz-vpc-base"
  vpc_name = "${var.vpc_name}"
  igw_name = "${var.igw_name}"
  cidr     = "${var.vpc_cidr}"
  rt_name  = "${var.rt_public_name}"
}

module "public_a" {
  source = "github.com/btower-labz/terraform-aws-btlabz-pub-sn"
  vpc_id = "${module.main_vpc.vpc_id}"
  name   = "${var.public_a_name}"
  az     = "${local.az_a}"
  cidr   = "${var.public_a_cidr}"
  rt_id  = "${module.main_vpc.rt_id}"
  tags   = "${var.tags}"
}

module "public_b" {
  source = "github.com/btower-labz/terraform-aws-btlabz-pub-sn"
  vpc_id = "${module.main_vpc.vpc_id}"
  name   = "${var.public_b_name}"
  az     = "${local.az_b}"
  cidr   = "${var.public_b_cidr}"
  rt_id  = "${module.main_vpc.rt_id}"
  tags   = "${var.tags}"
}

module "private_a" {
  source = "github.com/btower-labz/terraform-aws-btlabz-pri-sn"
  vpc_id = "${module.main_vpc.vpc_id}"
  name   = "${var.private_a_name}"
  az     = "${local.az_a}"
  cidr   = "${var.private_a_cidr}"
  tags   = "${var.tags}"
}

module "private_b" {
  source = "github.com/btower-labz/terraform-aws-btlabz-pri-sn"
  vpc_id = "${module.main_vpc.vpc_id}"
  name   = "${var.private_b_name}"
  az     = "${local.az_b}"
  cidr   = "${var.private_b_cidr}"
  tags   = "${var.tags}"
}

module "nat_a" {
  source    = "github.com/btower-labz/terraform-aws-btlabz-nat-base"
  subnet_id = "${module.public_a.subnet_id}"
  name      = "${var.nat_a_name}"
  tags      = "${var.tags}"
}

module "nat_b" {
  source    = "github.com/btower-labz/terraform-aws-btlabz-nat-base"
  subnet_id = "${module.public_b.subnet_id}"
  name      = "${var.nat_b_name}"
  tags      = "${var.tags}"
}
