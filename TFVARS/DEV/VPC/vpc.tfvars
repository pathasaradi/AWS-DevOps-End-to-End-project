aws_region          = "us-west-2"
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"
public_az           = "us-west-2a"
private_az          = "us-west-2b"
environment         = "dev"

tags = {
  Owner      = "DevTeam"
  CostCenter = "1234"
}
