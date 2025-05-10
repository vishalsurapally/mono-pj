
provider "aws" {
region = "us-east-1"
access_key = "AKIA4MTWH6SILL2I7VMN"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-085386e29e44dacd7"
key_name = "mykey"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}

