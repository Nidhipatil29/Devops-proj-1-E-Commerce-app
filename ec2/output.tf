output "webserver_ec2_instance_ip" {
  value = aws_instance.webserver_ec2_instance_ip.id
}

output "dev_proj_1_ec2_instance_public_ip" {
  value = aws_instance.webserver_ec2_instance_ip.public_ip
}