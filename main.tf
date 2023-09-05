#---root-main.tf

# Declare a module named "vpc" sourced from the "./vpc" directory
module "vpc" {
  source = "./vpc"
}

# Declare a module named "security_groups" sourced from the "./security_groups" directory
module "security_groups" {
  source = "./security_groups"

  # Pass the VPC ID from the "vpc" module as an input
  vpc_id = module.vpc.vpc_id
}
