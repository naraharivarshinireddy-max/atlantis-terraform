provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "this" {
  name        = "atlantis-staging-sg-demo"
  description = "Security group for Atlantis demo"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 4141
    to_port     = 4141
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "this" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.this.id]

  tags = {
    Name = "atlantis-demo-instance"
    Env  = "staging-demo"
  }
}