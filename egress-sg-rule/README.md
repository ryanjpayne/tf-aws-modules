# AWS Security Group Rule Module
Terraform module to create an egress security group rule
  
## Dependencies  
The following must exist or be created in your root module when running this configuration.  
- Security Group
  
## Inputs  
**sg-id** - (Required) The ID of the of the security group.  
  
## Example Usage  
  
``` 
module "egress-rule" {
  source = "$/Common Cloud/Terraform/AWS/modules/egress-sg-rule"
  sg-id  = "sg-1234567890"

  egress-rules = [
    {index=1, cidr=["0.0.0.0/0"], protocol="all", from_port="0", to_port="65535", description="Allow all egress traffic."}
  ]
}
```