# Retrieve VPC Values from SSM Parameter Store 

data "aws_ssm_parameter" "vpc-id" {
name = "${var.environment}-vpc-id"
}

data "aws_ssm_parameter" "vpc-cidr" {
name = "${var.environment}-vpc-cidr"
}