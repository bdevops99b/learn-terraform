resource "aws_instance" "workstaion" {
  ami = "unknown"
  instance_type = "unknown"
}
output "private_ip" {
  value = aws_instance.workstaion.private_ip
}