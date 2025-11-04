module "vpc" {
  source  = "../terraform-aws-vpc-module"
  #version = "5.0.0" # Use a specific version


  project = var.project
  environment = var.environment

  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs


}