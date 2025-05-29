resource "aws_autoscaling_group" "demo" {
  launch_configuration = aws_launch_configuration.demo.name
  vpc_zone_identifier  = data.aws_subnet_ids.default.ids
  min_size = 2
  max_size = 5
  tag {
    key                 = "demo"
    value               = "webserver-with-asg"
    propagate_at_launch = true
  }
}
data "aws_vpc" "default" {
  default = true
}
data "aws_subnet" "default" {
  vpc_id = data.aws_vpc.default.id
}
