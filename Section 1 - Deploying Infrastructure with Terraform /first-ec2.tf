provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXXXX"
  secret_key = "XXXXXXXX"
}
resource "aws_instance" "Dev" {
  ami           = "ami-XXXXXXXX"
  instance_type = "t2.micro"
  count	      = 2

  tags = {
    Name = "DEV-EC2"
    Env  = "DEV"
  }
}
