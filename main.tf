provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "XXXXXXXX"
  secret_key = "XXXXXXXX"
}
resource "aws_instance" "nginx" {
    instance_type = "t2.micro"
    ami = "ami-0be2609ba883822ec"
    key_name = "XXX"

provisioner "file" {
    source      = "/tmp"
    destination = "/tmp/py_web"
  }
}
