resource "aws_subnet" "lb" {
  count             = length(var.lb_subnet_cidr)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.lb_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]

  tags = local.lb_subnet_tags
}

resource "aws_subnet" "eks" {
  count             = length(var.eks_subnet_cidr)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.eks_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]

  tags = local.eks_subnet_tags
}

resource "aws_subnet" "db" {
  count             = length(var.db_subnet_cidr)
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.db_subnet_cidr[count.index]
  availability_zone = var.azs[count.index]

  tags = local.db_subnet_tags
}