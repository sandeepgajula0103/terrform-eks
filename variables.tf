variable "aws_region" {
description = "Region in aws which AWS resources  to be created"
type = string
default = "us-east-2"    
}

variable "instance_type" {
   description = "ec2-instance"
   type = string 
   default = "t2.micro"
}
variable "instance_keypair" {
    description = "aws ec2 "
    type = string
    default = "terraform-key" 
}