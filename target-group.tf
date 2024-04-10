
resource "aws_lb_target_group" "target-group-web" {
    name="web-target-group"
    port=80
    protocol="HTTP"
    vpc_id=aws_vpc.vpc.id
    health_check {
        path="/"
        matcher=200

    }
}
# creating listener
resource "aws_lb_listener" "alb_listener-web" {
  load_balancer_arn = aws_lb.alb-web.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-web.arn
  }
}