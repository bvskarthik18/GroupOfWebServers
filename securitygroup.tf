resource "aws_security_group" "webserver-securitygroup" {
  name = "webserver-securitygroup"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
