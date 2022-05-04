# Retrieve Network configuration from SSM Parameter Store

data "aws_ssm_parameter" "vpc-id" {
name = "${var.environment}-vpc-id"
}

data "aws_ssm_parameter" "vpc-cidr" {
name = "${var.environment}-vpc-cidr"
}

data "aws_ssm_parameter" "private-subnet-a" {
name = "${var.environment}-private-subnet-a"
}

data "aws_ssm_parameter" "private-subnet-b" {
name = "${var.environment}-private-subnet-b"
}

data "aws_ssm_parameter" "private-subnet-c" {
name = "${var.environment}-private-subnet-c"
}

data "aws_ssm_parameter" "public-subnet-a" {
name = "${var.environment}-public-subnet-a"
}

data "aws_ssm_parameter" "public-subnet-b" {
name = "${var.environment}-public-subnet-b"
}

data "aws_ssm_parameter" "public-subnet-c" {
name = "${var.environment}-public-subnet-c"
}