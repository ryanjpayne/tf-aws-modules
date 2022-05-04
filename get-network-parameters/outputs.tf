# Establish output values

output "vpc-id" {
  description = "The VPC ID"
  value       = data.aws_ssm_parameter.vpc-id.value
}

output "vpc-cidr" {
  description = "The VPC CIDR"
  value       = data.aws_ssm_parameter.vpc-cidr.value
}

output "private-subnet-a" {
  description = "The private-subnet-a ID"
  value       = data.aws_ssm_parameter.private-subnet-a.value
}

output "private-subnet-b" {
  description = "The private-subnet-b ID"
  value       = data.aws_ssm_parameter.private-subnet-b.value
}

output "private-subnet-c" {
  description = "The private-subnet-c ID"
  value       = data.aws_ssm_parameter.private-subnet-c.value
}

output "public-subnet-a" {
  description = "The public-subnet-a ID"
  value       = data.aws_ssm_parameter.public-subnet-a.value
}

output "public-subnet-b" {
  description = "The public-subnet-b ID"
  value       = data.aws_ssm_parameter.public-subnet-b.value
}

output "public-subnet-c" {
  description = "The public-subnet-c ID"
  value       = data.aws_ssm_parameter.public-subnet-c.value
}