provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "Terraform_Instance" {
  count                  = 1
  ami                    = var.ami
  key_name               = "KeyImportant"
  instance_type          = var.instance_type

  tags = {
    Name    = "Terraform"
    Owner   = "Nazar"
    Project = "Learning terraform"
    
  }
   
}

resource "aws_security_group" "Security_Group_special_edition" {
name =  "Security_Group_special_edition"
description = "my first dynamic SG"

dinamic "ingress" {
content{
for_each    = var.security_port
from_port   = ingress.value
to_port     = ingress.value
crid_blocks = ["0.0.0.0/0"]
 }
}



egress {
from_port   = 0
to_port     = 0
protocol    = "-1"
crid_blocks = ["0.0.0.0/0"]
}



}




