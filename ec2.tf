
# EC2 Instance
resource "aws_instance" "My_ec2" {
  ami = data.aws_ami.amz_linux2.id 
  instance_type = var.instance_type
  user_data = file("${path.module}/app-install.sh")
  
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]  
  tags = {
    "Name" = "EC2 Demo 2"
  }
}