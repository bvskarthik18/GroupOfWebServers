output "public-ip" {
  value = aws_instance.demo.public_ip
  description = "public ip of web server"
}
