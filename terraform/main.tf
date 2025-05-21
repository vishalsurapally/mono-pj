
provider "aws" {
region = "us-east-1"
access_key = "AKIA4MTWH6SIBI4H2VG2"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0e58b56aa4d64231b"
key_name = "mykey"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg01.id]
tags = {
Name = "project-instance"
}
}

