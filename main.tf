provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-08c40ec9ead489470" # Ubuntu 22.04 us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-ec2"
  }
}
