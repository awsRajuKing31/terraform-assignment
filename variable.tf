variable "aws_region" {
  default = "us-east-1"
}

variable "profile" {
  default = "test"
}

variable "ec2_ami" {
  default = "ami-06cc514f1012a7431"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_key" {
  default = "two"
}

variable "ec2_count" {
  default = "10"
}
variable "environment" {
  default = "dev"
}

variable "subnets" {
  type    = list(any)
  default = ["subnet-0d0f413a4f6c07a5e", "subnet-0ca4bd93ed0fd5029", "subnet-02d95e2296f644ad2"]
}

variable "vpc_id" {
  default = "vpc-042c77f13bfa3446c"
}