output "vpc_id" {
  description = "VPC identifier."
  value       = "${module.main_vpc.vpc_id}"
}

output "public_a" {
  description = "Public subnet A identifier."
  value       = "${module.public_a.subnet_id}"
}

output "public_b" {
  description = "Public subnet B identifier."
  value       = "${module.public_b.subnet_id}"
}

output "private_a" {
  description = "Private subnet A identifier."
  value       = "${module.private_a.subnet_id}"
}

output "private_b" {
  description = "Private subnet B identifier."
  value       = "${module.private_b.subnet_id}"
}

output "nat_a_public_ip" {
  description = "NAT-A public IP address."
  value       = "${module.nat_a.public_ip}"
}

output "nat_b_public_ip" {
  description = "NAT-B public IP address."
  value       = "${module.nat_b.public_ip}"
}
