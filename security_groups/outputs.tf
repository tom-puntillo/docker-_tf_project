#---security_groups outputs.tf

# Define an output named "security_group_http" that will provide the ID of the AWS security group named "allow_http".
output "security_group_http" {
  value = aws_security_group.allow_http.id # Access the ID of the "allow_http" security group
}

# Define an output named "security_group_tls" that will provide the ID of the AWS security group named "allow_tls".
output "security_group_tls" {
  value = aws_security_group.allow_tls.id # Access the ID of the "allow_tls" security group
}

output "security_group_docker" {
  value = aws_security_group.docker_cluster.id # Access the ID of the "docker_cluster" security group
}

output "security_group_jenkins" {
  value = aws_security_group.jenkins_port.id
}