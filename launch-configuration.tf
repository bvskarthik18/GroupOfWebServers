resource "aws_launch_configuration" "demo" {
  image_id        = "ami-001fd6570c8268513"
  instance_type   = "t2.micro"
  security_groups = [aws_security_group.webserver-securitygroup.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "You are learning Terraform, Have a good day" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF
  lifecycle {
    create_before_destroy = true
  }
}
