locals {
  region      = "eu-west-3"
  vpc_cidr    = "20.0.0.0/16"
  subnet_cidr = "20.0.1.0/24"
  environment_name = basename(get_terragrunt_dir())
  instance_type = "t2.small"
  az = "eu-west-3b"
}