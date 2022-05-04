# AWS Security Group Rule Module
Terraform module to create an ingress security group rule in which the source is another security group 
  
## Dependencies  
The following must exist or be created in your root module when running this configuration.  
- Security Group
  
## Inputs  
**sg-id** - (Required) The ID of the of the security group.  
  
## Example Usage  
  
```
module "sg-source-rule" {
  source = "$/location/modules/sg-source-sg-rule"
  sg-id  = "sg-1234567890"

  sg-source-rules = [
    {index=1, sg=security-group-id, protocol="tcp", from_port="0", to_port="65535", description=""},
    {index=2, sg=security-group-id, protocol="tcp", from_port="0", to_port="65535", description=""}
  ]
}
```