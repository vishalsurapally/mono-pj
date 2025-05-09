
provider "aws" {
region = "us-east-1"
access_key = "AKIA4MTWH6SIFXY47EHR"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = ""
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
}
}

