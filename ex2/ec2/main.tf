resource "aws_instance" "instance" {
  ami      = data.aws_ami.centos.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ var.sg_id]

  tags = {
    Name = "test"
  }
}

variable "sg_id" {}