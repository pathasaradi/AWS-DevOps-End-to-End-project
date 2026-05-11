resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = merge(
    {
      Name        = "${var.environment}-vpc"
      Environment = var.environment
      ManagedBy   = "Terraform"
    },
    var.tags
  )
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.public_az
  map_public_ip_on_launch = true

  tags = merge(
    {
      Name        = "${var.environment}-public-subnet"
      Environment = var.environment
    },
    var.tags
  )
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet_cidr
  availability_zone = var.private_az

  tags = merge(
    {
      Name        = "${var.environment}-private-subnet"
      Environment = var.environment
    },
    var.tags
  )
}
