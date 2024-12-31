
resource "aws_instance" "webserver_ec2_instance_ip" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = var.tag_name
  }

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.sg_for_webserver
  associate_public_ip_address = var.enable_public_ip_address

}