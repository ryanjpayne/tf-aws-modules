# AWS Security Group Module
Terraform module to deploy a Security Group and rules.  
  
## Dependencies  
The following must exist or be created in your root module when running this configuration.  
- VPC
- ${var.env}_vpc_id parameter
- ${var.env}_vpc_cidr parameter
  
## Inputs  
**name** - (Required) The name of the security group.  
**description** - (Required) The description of the security group.  
**environment** - (Required) The environment tag to get vpcId value and tag security group.  
  
## Example Usage  
  
```
# Create a security group
module "security-group" {
  source = "$/Common Cloud/Terraform/AWS/modules/security-group"

  name         = "example-sg"
  description  = "Example description of the Security Group"
  environment  = "dev"
}
```  
  
## Example Usage with Rule Modules  
  
```
# Create a security group
module "security-group" {
  source = "$/Common Cloud/Terraform/AWS/modules/security-group"

  name         = "example-sg"
  description  = "Example description of the Security Group"
  environment  = "dev"
}

# Create local to apply Security Group output ID to each rule module
locals {
    sg-id = module.security-group.sg-id
}

# Create an ingress security group rule in which the source is a CIDR range 
module "cidr-source-rule" {
  source = "$/Common Cloud/Terraform/AWS/modules/cidr-source-sg-rule"
  sg-id  = local.sg-id

  cidr-source-rules = [
    {index=1, cidr=["0.0.0.0/0"], protocol="tcp", from_port=0, to_port=65535, description=""}
  ]
}

# Create an ingress security group rule in which the source is another security group 
module "sg-source-rule" {
  source = "$/Common Cloud/Terraform/AWS/modules/sg-source-sg-rule"
  sg-id  = local.sg-id

  sg-source-rules = [
    {index=1, sg=security-group-id, protocol="tcp", from_port="0", to_port="65535", description=""}
  ]
}

# Create an ingress security group rule in which the source is the same security group 
module "self-source-rule" {
  source = "$/Common Cloud/Terraform/AWS/modules/self-source-sg-rule"
  sg-id  = local.sg-id

  self-source-rules = [
    {index=1, protocol="tcp", from_port="0", to_port="65535", description=""}
  ]
}

# Create an egress security group rule
module "egress-rule" {
  source = "$/Common Cloud/Terraform/AWS/modules/egress-sg-rule"
  sg-id  = local.sg-id

  egress-rules = [
    {index=1, cidr=["0.0.0.0/0"], protocol="all", from_port="0", to_port="65535", description="Allow all egress traffic."}
  ]
}
```
  
## Outputs  
**sg-name** - The name of the security group.  
**sg-id** - The ID of the security group.  
**sg-arn** - The ARN of the security group.  