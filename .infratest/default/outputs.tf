// Validate required module outputs with infratest

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_a" {
  value = module.vpc.public_a
}

output "public_b" {
  value = module.vpc.public_b
}

output "private_a" {
  value = module.vpc.private_a
}

output "private_b" {
  value = module.vpc.private_b
}

output "nat_a_public_ip" {
  value = module.vpc.nat_a_public_ip
}

output "nat_b_public_ip" {
  value = module.vpc.nat_b_public_ip
}
