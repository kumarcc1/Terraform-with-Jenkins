provider "aws" {

region = "us-east-1"
}

locals {

USA  = {

name = "usa-project"
owner = "kumara"
 }
}

locals {
  UK  = {
  Name = "UK-Project"
  owner = " kumara"
 }
}

resource "aws_instance" "web" {
        instance_type   = "t2.micro"
        ami             = "ami-07dff4fe919dee33e"
        tags            = local.USA
}

resource "aws_vpc" "VPC" {

        cidr_block      = "10.0.0.0/16"
        instance_tenancy = "default"
        tags            = local.USA
}

resource "aws_ebs_volume" "vol1" {
availability_zone       = "us-east-1a"
size                    = 2
tags                    = local.USA
}


resource "aws_instance" "webuk" {
        instance_type   = "t2.micro"
        ami             = "ami-07dff4fe919dee33e"
        tags            = local.UK
}

resource "aws_vpc" "VPCUK" {

        cidr_block      = "10.0.0.0/16"
        instance_tenancy = "default"
        tags            = local.UK
}

resource "aws_ebs_volume" "vol2" {
availability_zone       = "us-east-1a"
size                    = 2
tags                    = local.UK
}
