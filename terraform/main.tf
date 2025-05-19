
provider "aws" {
region = "us-east-1"
access_key = "AKIA4MTWH6SIKUFFBPLM"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0e58b56aa4d64231b"
key_name = "mykey"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}

