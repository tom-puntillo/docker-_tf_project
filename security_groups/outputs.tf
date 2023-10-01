#---security_groups outputs.tf

output "security_group_docker" {
  value = aws_security_group.docker_cluster.id # Access the ID of the "docker_cluster" security group
}

output "security_group_jenkins" {
  value = aws_security_group.jenkins_port.id
}