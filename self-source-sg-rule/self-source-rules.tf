# Create Security group rules that reference itself as the Source

resource "aws_security_group_rule" "self-source-rules" {
  for_each = {for s in var.self-source-rules : s.index => s}
  type                     = "ingress"
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  description              = each.value.description
  security_group_id        = var.sg-id
  self                     = true
}