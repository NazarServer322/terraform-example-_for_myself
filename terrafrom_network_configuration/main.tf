provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "MasterJenkins" {
  count                  = 1
  ami                    = "ami-0ed17ff3d78e74700"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0446a23868282b71f"]
  key_name               = "devops_course_work"

  tags = {
    Name    = "Created using terraform"
    Owner   = "NazarServer"
    Project = "Nazar Lerning terraform network"
  }
}