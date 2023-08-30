#---root-main.tf

# Declare a module named "vpc" sourced from the "./vpc" directory
module "vpc" {
  source = "./vpc"
}
