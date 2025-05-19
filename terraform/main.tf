
provider "aws" {
region = "us-east-1"
access_key = "AKIA4MTWH6SIDDURDYF7"
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

