resource "aws_route" "nat_route_a" {
  route_table_id         = "${module.private_a.rt_id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${module.nat_a.nat_id}"
}

resource "aws_route" "nat_route_b" {
  route_table_id         = "${module.private_b.rt_id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${module.nat_b.nat_id}"
}
