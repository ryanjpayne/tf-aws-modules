# Establish output values

output "sg-name" {
  description = "The Name of the Security group"
  value       = aws_security_group.modular-sg.name
}

output "sg-id" {
  description = "The ID of the Security group"
  value       = aws_security_group.modular-sg.id
}

output "sg-arn" {
  description = "The ARN of the Security group"
  value       = aws_security_group.modular-sg.arn
}