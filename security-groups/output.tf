output "sg_ec2_sg_ssh_http_id" {
  value = aws_security_group.ec2_sg_ssh_http.id
}

output "rds_mysql_sg_id" {
  value = aws_security_group.rds_mysql_sg.id
}

output "security_group_public" {
   value = "${aws_security_group.worker_node_sg.id}"
}

output "worker_node_sg_id" {
  value = aws_security_group.worker_node_sg.id
}