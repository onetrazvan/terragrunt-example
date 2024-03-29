terraform {
  source = "github.com/onetrazvan/ec2-module.git"
}


locals {
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}


inputs = {
  region            = local.environment_vars.locals.region
  vpc_cidr          = local.environment_vars.locals.vpc_cidr
  subnet_cidr       = local.environment_vars.locals.subnet_cidr
  availability_zone = local.environment_vars.locals.az
  environment       = local.environment_vars.locals.environment_name
  instance_type     = local.environment_vars.locals.instance_type
  ami               = "ami-00c71bd4d220aa22a"
  deployer          = "Razvan"
}