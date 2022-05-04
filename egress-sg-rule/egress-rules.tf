# Create Egress Security Group rules

resource "aws_security_group_rule" "egress-rules" {
  for_each = {for s in var.egress-rules : s.index => s}
  type                     = "egress"
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  description              = each.value.description
  security_group_id        = var.sg-id
  cidr_blocks              = each.value.cidr
}