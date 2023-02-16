# Resource output
output "instnace_public_ip" {
  description = "Instnace Public IP"
  value       = aws_instance.web-ec2.*.public_ip
}

output "instance1_public_dns" {
  description = "Instance Public DNS"
  value       = aws_instance.web-ec2[0].public_dns
}

output "instance2_public_dns" {
  description = "Instance Public DNS"
  value       = aws_instance.web-ec2[1].public_dns
}
