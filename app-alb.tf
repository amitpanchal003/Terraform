resource "aws_lb" "alb-app" {
  name               = "App-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb-security-group-app.id]
  subnets            = [aws_subnet.app-subnet-1.id, aws_subnet.app-subnet-2.id]
}