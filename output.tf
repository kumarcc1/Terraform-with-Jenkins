output "instance_ip" {
  value = aws_instance.sanvi.public_ip
}

output "instance_arn" {
  value = aws_instance.arn
  sensitive = true
}

output "instance_ami" {
  value = aws_instance.ami
}

output "vpc_cidr" {
        value = aws_vpc.main.cidr_block
}
