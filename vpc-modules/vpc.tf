#create vpc Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.0"

  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr_block
  azs =  var.vpc_avaliability_zone
  private_subnets = var.vpc_private_subnet
  public_subnets = var.vpc_public_subnets

  #Database subnetgroup
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  database_subnets = var.vpc_database_subnets

  #natgateway
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
  
  #DNS-parameters
  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support = var.vpc_enable_dns_support

  tags = local.common_tags
  vpc_tags = local.common_tags

  #VPC-tags
  public_subnet_tags = {
    type = "Public-subnets"
  }

  private_subnet_tags = {
    type = "Private-subnets"
  }
  database_subnet_tags = {
    type ="Database-subnets"
  }

}