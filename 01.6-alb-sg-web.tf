# security group configuration for load balancer

resource "aws_security_group" "alb-security-group-web" {
  name        = "alb-config-sg"
  description = "ALB Security Group"
  vpc_id      = aws_vpc.vpc.id


  #Inbound Rules:
  #HTTP access from anywhere -

  ingress {
    description = "HTTP from Internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SSH Access from anywhere - 
  ingress {
    description="ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-nesg"
  }
}