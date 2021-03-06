data "aws_region" "current" {
}

data "aws_availability_zone" "zone_a" {
  name = var.az_a == "" ? format("%sa", data.aws_region.current.name) : var.az_a
}

data "aws_availability_zone" "zone_b" {
  name = var.az_b == "" ? format("%sb", data.aws_region.current.name) : var.az_b
}

# Effective AZ selection.
locals {
  az_a = data.aws_availability_zone.zone_a.name
  az_b = data.aws_availability_zone.zone_b.name
}

