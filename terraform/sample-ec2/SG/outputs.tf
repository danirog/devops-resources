output "sg_ec2_id" {
  sensitive   = true
  description = "ID of the SG"
  value       = aws_security_group.sg.id
}
