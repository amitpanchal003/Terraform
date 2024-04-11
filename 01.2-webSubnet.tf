#####################################
# Web or Preaentation layer        
#####################################

# public subnet 1

resource "aws_subnet" "web-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "pub-1"
  }
}

# public subnet 2

resource "aws_subnet" "web-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "pub-2"
  }
}

#####################################
# Application layer        
#####################################

# private subnets 1

resource "aws_subnet" "app-subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.3.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "app-subnet-private-1"
  }
}

# private subnets 2

resource "aws_subnet" "app-subnet-2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "172.16.4.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "app-subnet-private-2"
  }
}

#####################################
# Database layer        
#####################################
