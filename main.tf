provider "aws" {
        region = "us-east-1"
}

resource "aws_instance" "Server-01" {
        instance_type   =  "t2.micro"
        ami = "ami-07dff4fe919dee33e"
        tags = {
        Name = "Server-01"
 }
}
resource "aws_vpc" "main" {
 cidr_block = "172.16.0.0/16"
 tags = {
   name = "main"
 }
}
