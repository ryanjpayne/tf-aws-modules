# Create Security Group rule with CIDR as the source for each line in var.cidr-source-rules

resource "aws_security_group_rule" "cidr-source-rules" {
  for_each = {for s in var.cidr-source-rules : s.index => s}
  type                     = "ingress"
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  description              = each.value.description
  security_group_id        = var.sg-id
  cidr_blocks              = each.value.cidr
}