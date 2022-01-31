# resource "aws_launch_configuration" "devops_launch_config" {
#   name          = "web_template"
#   image_id      = data.aws_ami.example.id
#   instance_type = var.instance_type
#   associate_public_ip_address = true
#   iam_instance_profile        = aws_iam_instance_profile.ec2_profile.id
#   security_groups = [aws_security_group.ziyotek_devops_all_all.id]
#   user_data                   = file("userdata.sh")
#   key_name = "rady_key_new"
# }

# resource "aws_autoscaling_group" "devops_autoscaling_config" {
#   name                      = "web_tier_ag"
#   max_size                  = 2
#   min_size                  = 1
#   desired_capacity          = 1
#   force_delete              = false
#   launch_configuration      = aws_launch_configuration.devops_launch_config.name
#   vpc_zone_identifier       = [aws_subnet.devops_subnet_1.id, aws_subnet.devops_subnet_2.id]
# }

# resource "aws_autoscaling_attachment" "asg_attachment_bar" {
#   autoscaling_group_name = aws_autoscaling_group.devops_autoscaling_config.id
#   alb_target_group_arn   = aws_lb_target_group.devops_tg_config.arn
# }

# resource "aws_lb" "devops_alb_config" {
#   name               = "web-tier-lb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.ziyotek_devops_all_all.id]
#   subnets            = [aws_subnet.devops_subnet_1.id, aws_subnet.devops_subnet_2.id]

#   enable_deletion_protection = false
# }

# resource "aws_lb_listener" "devops_listener_config" {
#   load_balancer_arn = aws_lb.devops_alb_config.arn
#   protocol          = "HTTP"
#   port = "80"


#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.devops_tg_config.arn
#   }
# }

# resource "aws_lb_listener_rule" "devops_listener_rule_config" {
#   listener_arn = aws_lb_listener.devops_listener_config.arn
#   priority     = 100

#   action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.devops_tg_config.arn
#   }

#   condition {
#     path_pattern {
#       values = ["/static/*"]
#     }
#   }
# }

# resource "aws_lb_target_group" "devops_tg_config" {
#   name     = "web-tier-lb-tg"
#   port     = 80
#   protocol = "HTTP"
#   vpc_id   = aws_vpc.ziyotek_devops.id
#     health_check {
#         unhealthy_threshold = 3
#         healthy_threshold = 10
#         timeout = 5
#         interval = 30
#         path = "/"
#         port = "traffic-port"
#         matcher = "200-320" #success codes
#     }
# }
