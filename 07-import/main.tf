resource "aws_instance" "workstaion" {
  ami                                  = "ami-0b5a2b5b8f2be4ec2"
  instance_type                        = "t3.micro"
}
output "private_ip" {
  value = aws_instance.workstaion.private_ip
}