module "vpc" {
  #source  = "../13-terraform-aws-vpc-module"
  source = "git::https://github.com/PraneethReddy2701/13-terraform-aws-vpc-module.git?ref=main"
  #version = "5.0.0" # Use a specific version


  project = var.project
  environment = var.environment

  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  database_subnet_cidrs = var.database_subnet_cidrs

 is_peering_required = true
 
}