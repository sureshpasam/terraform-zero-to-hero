provider "aws" {
  region     = "eu-central-1"
  shared_credentials_files = ["/Users/rahulwagh/.aws/credentials"]
}


resource "aws_instance" "example" {
  ami = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name= "aws_key"
  /*user_data     = templatefile("${path.module}/user_data.tpl", {
    package = "nginx"
    command = "systemctl start nginx"
  })*/
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  ingress                = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 22
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 22
    },
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 443
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "tcp"
      security_groups  = []
      self             = false
      to_port          = 443
    }
  ]
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = ""}

output "fetched_info_from_aws" {
  value = format("%s%s","ssh -i /Users/rahulwagh/.ssh/aws_ec2_terraform ubuntu@",aws_instance.example.public_dns)
}