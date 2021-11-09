provider "aws" {
  region = "us-east-2"
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "*********"
  instance_type          = "t2.micro"
  key_name               = "*******"
  monitoring             = true
  vpc_security_group_ids = ["***********"]
  subnet_id              = "***********"
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
