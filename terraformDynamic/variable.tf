variable "access_key" {
type = string
default = ""
}

variable "secret_key" {
  type = string
  default = ""
}

variable "region" {
  type = string
  default = "eu-north-1" 
}

variable "security_port" {
  type = list 
  default = ["80", "433", "8080", "22"]
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "ami" {
 type = string
 default = "ami-0ed17ff3d78e74700"  
}