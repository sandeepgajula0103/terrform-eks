variable "aws_region" {
description = "Region in aws which AWS resources  to be created"
type = string
default = "us-east-2"    
}

variable "vpc_name" {
    description = "VPC name"
    type = string
    default = "myvpc"
}
variable "vpc_cidr_block" {
    description = "vpc cidr block"
    default = "10.0.0.0/16"
  
}
variable "vpc_avaliability_zone" {
    description = "VPC Avaliablity zones"
    type = list(string)
    default = [ "us-east-2a","us-east-2b" ]  
}

variable "vpc_private_subnet" {
    description = "VPC private subnet"
    type = list(string)
    default = [ "10.0.1.0/24","10.0.2.0/24" ]
}
variable "vpc_public_subnets" {
  description = "VPC public subnet"
  type = list(string)
  default = [ "10.0.101.0/24","10.0.102.0/24" ]
}

variable "vpc_database_subnets" {
    description = "VPC database subnets"
    type = list(string)
    default = [ "10.0.141.0/24","10.0.142.0/24" ]
}

variable "vpc_create_database_subnet_group" {
    description = "VPC create database subnet group"
    type = bool
    default = true 
}
variable "vpc_create_database_subnet_route_table" {

  description = "vpc_reate_database_subnet_route_table"
  type = bool
  default = true
}
variable "vpc_enable_nat_gateway" {
    description = "vpc_enable_nat_gateway"
    type = bool
    default = true 
}
variable "vpc_single_nat_gateway" {
    description = "vpc_single_nat_gateway"
    type = bool
    default = true  
}
variable "vpc_enable_dns_hostnames" {
    description = "vpc_nable_dns_hostnames"
    type = bool
    default = true
}
variable "vpc_enable_dns_support" {
    description = "vpc_enable_dns_support"
    type = bool
    default = true
}

variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}