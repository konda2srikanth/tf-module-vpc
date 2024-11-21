# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = local.igw_rt_tags
}


# EIP for NAT
resource "aws_eip" "main" {
  domain = "vpc"
}
# Nat gateway
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.lb.*.id[0]

  tags = local.ngw_rt_tags


  depends_on = [aws_internet_gateway.igw, aws_eip.main]
}