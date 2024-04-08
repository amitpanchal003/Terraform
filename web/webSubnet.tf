#first public subnet
resource "aws_subnet" "web-subnet-1"{
    vpc_id=aws_vpc.vpc.id 
    cidr_block="10.0.1.0/24"
    availability_zone= "us-east-1a"
    map_public_ip_on_launch = true
    tags={
        Name= pub-1
    }
}

# Second public subnet
resource "aws_subnet" "web-subnet-1"{
    vpc_id=aws_vpc.vpc.id 
    cidr_block="10.0.2.0/24"
    availability_zone= "us-east-1b"
    map_public_ip_on_launch = true
    tags={
        Name= pub-2
    }
}