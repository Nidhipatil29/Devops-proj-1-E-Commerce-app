
output "dev_proj_1_vpc_id" {
  value = aws_vpc.dev_proj_1_vpc_ap_central_1.id
}

output "dev_proj_1_public_subnets" {
  value = aws_subnet.dev_proj_1_public_subnets.*.id
}

output "dev_proj_1_private_subnets" {
value = aws_subnet.dev_proj_1_private_subnets.*.id
}

output "public_subnet_cidr_block" {
  value = aws_subnet.dev_proj_1_public_subnets.*.cidr_block
}

output "private_subnet_cidr_block"{
  value = aws_subnet.dev_proj_1_private_subnets.*.cidr_block
}