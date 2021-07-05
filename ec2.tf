provider "aws" {
  region     = "eu-north-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "Terraform_Instance" {
  count                  = 1
  ami                    = "ami-0ed17ff3d78e74700" 
  vpc_security_group_ids = ["sg-0446a23868282b71f"]
  key_name               = "KeyImportant"
  user_data              = file("scritp.sh") 
  

  tags = {
    Name    = "Terraform"
    Owner   = "Nazar"
    Project = "Learning terraform"
    
  }
   
}

