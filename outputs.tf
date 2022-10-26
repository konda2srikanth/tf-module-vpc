output "VPC_ID" {
    value = aws_vpc.main.id
}

output "VPC_CIDR" {
    value =  aws_vpc.main.cidr_block
}

output "PUBLIC_SUBNET_IDS" {
    value =  aws_subnet.public.*.id
}

output "PRIVATE_SUBNET_IDS" {
    value =  aws_subnet.private.*.id
}