provider "aws" {
  region  = "us-east-1"
  profile = var.profile
}

resource "aws_instance" "t1" {
  count                  = var.ec2_count
  ami                    = var.ec2_ami
  instance_type          = var.instance_type
  key_name               = var.ec2_key
  vpc_security_group_ids = ["${aws_security_group.ec2-sg.id}"]
  subnet_id              = element(var.subnets, count.index)
  tags = {
    Name = "$var.environment-t1-${count.index + 1}"
  }
}