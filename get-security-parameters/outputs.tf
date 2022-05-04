# Establish output values

output "allocator-sg" {
  value  = data.aws_ssm_parameter.allocator-sg.value
}

output "allow-users-sg" {
  value  = data.aws_ssm_parameter.allow-users-sg.value
}

output "ansible-sg" {
  value  = data.aws_ssm_parameter.ansible-sg.value
}

output "ansible-ssh-sg" {
  value  = data.aws_ssm_parameter.ansible-ssh-sg.value
}

output "canary-sg" {
  value  = data.aws_ssm_parameter.canary-sg.value
}

output "controllers-sg" {
  value  = data.aws_ssm_parameter.controllers-sg.value
}

output "ece-lb-sg" {
  value  = data.aws_ssm_parameter.ece-lb-sg.value
}

output "essential-sg" {
  value  = data.aws_ssm_parameter.essential-sg.value
}

output "jenkins-alb-sg" {
  value  = data.aws_ssm_parameter.jenkins-alb-sg.value
}

output "jenkins-sg" {
  value  = data.aws_ssm_parameter.jenkins-sg.value
}

output "jumphost-sg" {
  value  = data.aws_ssm_parameter.jumphost-sg.value
}

output "mgmt-sg" {
  value  = data.aws_ssm_parameter.mgmt-sg.value
}

output "prisma-sg" {
  value  = data.aws_ssm_parameter.prisma-sg.value
}

output "proxy-sg" {
  value  = data.aws_ssm_parameter.proxy-sg.value
}

output "python-sg" {
  value  = data.aws_ssm_parameter.python-sg.value
}

output "rabbitmq-sg" {
  value  = data.aws_ssm_parameter.rabbitmq-sg.value
}

output "rt53-sg" {
  value  = data.aws_ssm_parameter.rt53-sg.value
}

output "security-sg" {
  value  = data.aws_ssm_parameter.security-sg.value
}

output "ssm-sg" {
  value  = data.aws_ssm_parameter.ssm-sg.value
}

output "swimlane-external-sg" {
  value  = data.aws_ssm_parameter.swimlane-external-sg.value
}

output "swimlane-internode-sg" {
  value  = data.aws_ssm_parameter.swimlane-innernode-sg.value
}

output "threatq-sg" {
  value  = data.aws_ssm_parameter.threatq-sg.value
}