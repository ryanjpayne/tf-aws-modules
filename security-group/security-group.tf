# Create Security Group

resource "aws_security_group" "modular-sg" {
  name        = "${var.environment}-${var.name}"
  description = var.description 
  vpc_id      = data.aws_ssm_parameter.vpc-id.value

  tags = {
    Name        = "${var.environment}-${var.name}"
    Environment = var.environment
  }
}

# Write Security Group ID to Parameter Store

resource "aws_ssm_parameter" "sg-parameter" {
  name  = "${var.environment}-${var.name}"
  type  = "String"
  value = aws_security_group.modular-sg.id
}