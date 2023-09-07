#---ec2-main.tf---

# Define AWS instances for web servers
resource "aws_instance" "web_server_1" {
  ami                    = var.ami # Use the specified AMI for the instance
  count                  = 4
  instance_type          = var.instance_type   # Set the instance type based on the variable
  subnet_id              = var.public_subnet_1 # Use the first public subnet from the variable
  user_data              = var.user_data       # Use the user data defined in the variable
  vpc_security_group_ids = var.security_groups # Attach security groups from the variable
}