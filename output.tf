output "instance_ip" {
  value = aws_instance.Server-01.public_ip
}

output "instance_arn" {
  value = aws_instance.Server-01.arn
  sensitive = true
}

output "instance_ami" {
  value = aws_instance.Server-01.ami
}

output "vpc_cidr" {
        value = aws_vpc.main.cidr_block
}
