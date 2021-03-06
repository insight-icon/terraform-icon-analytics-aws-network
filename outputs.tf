#####
# sgs
#####

output "sg_rds_id" {
  value = join("", aws_security_group.rds.*.id)
}

output "sg_redshift_id" {
  value = join("", aws_security_group.redshift.*.id)
}

output "sg_prometheus_id" {
  value = join("", aws_security_group.prometheus.*.id)
}

#####
# VPC
#####
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnet_cidr_blocks" {
  value = module.vpc.public_subnets_cidr_blocks
}

output "private_subnets_cidr_blocks" {
  value = module.vpc.private_subnets_cidr_blocks
}

output "azs" {
  value = module.vpc.azs
}

output "private_route_table_ids" {
  value = module.vpc.private_route_table_ids
}
