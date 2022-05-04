# Create Security Group rules that reference another Security Group ID as the Source 

resource "aws_security_group_rule" "sg-source-rules" {
  for_each = {for s in var.sg-source-rules : s.index => s}
  type                     = "ingress"
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol
  description              = each.value.description
  security_group_id        = var.sg-id
  source_security_group_id = each.value.sg
}