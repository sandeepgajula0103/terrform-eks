output "instance_publicIP" {
 description = "EC2 Instance public IP"
 value = aws_instance.My_ec2.public_ip
}

output "instance_publicDNS" {
 description = "EC2 Instance public DNS"
 value = aws_instance.My_ec2.public_dns
 }

