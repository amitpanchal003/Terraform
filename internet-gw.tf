#to provide internet in vpc we need internet gateway

# creating internet gateway

resource "aws_internet_gateway" "internet-gw"{
    vpc_id= aws_vpc.vpc.id 
    # here we are providing vpc.id that means we are attachnig igw to vpc    
    tags={
        Name="ambani-ka-love**"
    }

}

# now we need to provide internet to private subnet also
#for that, we need NAT-gateway > nat gateway require eip [ elastic-ip ]

resource "aws_eip" "eip"{
    domain= "vpc"
}

resource "aws_nat_gateway" "nat-gw"{
    allocation_id=aws_eip.eip.id
    connectivity_type="public"
    subnet_id=aws_subnet.web-subnet-1.id
    tags={
        Name= "akash-ambani"
    }
    depends_on=[aws_internet_gateway.internet-gw]
}