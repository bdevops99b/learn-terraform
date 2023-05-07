resource "aws_instance" "workstaion" {}
output "private_ip" {
  value = aws_instance.workstaion.private_ip
}