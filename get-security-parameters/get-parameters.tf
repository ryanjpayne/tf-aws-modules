# Retrieve Security Group IDs from SSM Parameter Store 

data "aws_ssm_parameter" "allocator-sg" {
  name  = "${var.environment}-allocator-sg"
}

data "aws_ssm_parameter" "allow-users-sg" {
  name  = "${var.environment}-allow-users-sg"
}

data "aws_ssm_parameter" "ansible-sg" {
  name  = "${var.environment}-ansible-sg"
}

data "aws_ssm_parameter" "ansible-ssh-sg" {
  name  = "${var.environment}-ansible-ssh-sg"
}

data "aws_ssm_parameter" "canary-sg" {
  name  = "${var.environment}-canary-sg"
}

data "aws_ssm_parameter" "controllers-sg" {
  name  = "${var.environment}-d-98673be150-controllers-sg"
}

data "aws_ssm_parameter" "ece-lb-sg" {
  name  = "${var.environment}-ece-lb-sg"
}

data "aws_ssm_parameter" "essential-sg" {
  name  = "${var.environment}-essential-sg"
}

data "aws_ssm_parameter" "jenkins-alb-sg" {
  name  = "${var.environment}-jenkins-alb-sg"
}

data "aws_ssm_parameter" "jenkins-sg" {
  name  = "${var.environment}-jenkins-sg"
}

data "aws_ssm_parameter" "jumphost-sg" {
  name  = "${var.environment}-jumphost-sg"
}

data "aws_ssm_parameter" "mgmt-sg" {
  name  = "${var.environment}-mgmt-sg"
}

data "aws_ssm_parameter" "prisma-sg" {
  name  = "${var.environment}-prisma-sg"
}

data "aws_ssm_parameter" "proxy-sg" {
  name  = "${var.environment}-proxy-sg"
}

data "aws_ssm_parameter" "python-sg" {
  name  = "${var.environment}-python-sg"
}

data "aws_ssm_parameter" "rabbitmq-sg" {
  name  = "${var.environment}-rabbitmq-sg"
}

data "aws_ssm_parameter" "rt53-sg" {
  name  = "${var.environment}-rt53-resolver-sg"
}

data "aws_ssm_parameter" "security-sg" {
  name  = "${var.environment}-security-sg"
}

data "aws_ssm_parameter" "ssm-sg" {
  name  = "${var.environment}-ssm-sg"
}

data "aws_ssm_parameter" "swimlane-external-sg" {
  name  = "${var.environment}-swimlane-external-sg"
}

data "aws_ssm_parameter" "swimlane-innernode-sg" {
  name  = "${var.environment}-swimlane-innernode-sg"
}

data "aws_ssm_parameter" "threatq-sg" {
  name  = "${var.environment}-threatq-sg"
}