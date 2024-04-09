# route table and association

# creating route table for web-subnets

resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gw.id

  }

  tags = {
    Name = "public-route-table"
  }

}

# web subnet RT-association

resource "aws_route_table_association" "pub-rt-association-1" {
  subnet_id      = aws_subnet.web-subnet-1.id
  route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "pub-rt-association-2" {
  subnet_id      = aws_subnet.web-subnet-2.id
  route_table_id = aws_route_table.public-route-table.id
}