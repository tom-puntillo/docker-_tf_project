#---ec2-variables.tf

# Define a variable named "user_data" of type string with a default value.
variable "user_data" {
  type    = string
  default = "IyEvYmluL2Jhc2gKCmFwdCB1cGRhdGUgLXkKYXB0IHVwZ3JhZGUgLXkKY3VybCAtZnNTTCBodHRwczovL2dldC5kb2NrZXIuY29tIC1vIGdldC1kb2NrZXIuc2gKc3VkbyBzaCBnZXQtZG9ja2VyLnNo"
}

variable "manager_user_data" {
  type    = string
  default = "IyEvYmluL2Jhc2gKCmFwdCB1cGRhdGUgLXkKYXB0IHVwZ3JhZGUgLXkKY3VybCAtZnNTTCBodHRwczovL2dldC5kb2NrZXIuY29tIC1vIGdldC1kb2NrZXIuc2gKc3VkbyBzaCBnZXQtZG9ja2VyLnNoCmdpdCBjbG9uZSBodHRwczovL2dpdGh1Yi5jb20vdG9tLXB1bnRpbGxvL2RvY2tlcl9jb21wb3NlX2ZpbGVzLmdpdA=="
}

# Define a variable named "instance_type" of type string with a default value.
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

# Define a variable named "ami" of type string with a default value.
variable "ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

# Define a variable named "public_subnet_1" of type string with a description.
variable "public_subnet_1" {
  type        = string
  description = "Valid subnets in which to deploy a server"
}

# Define a variable named "public_subnet_2" of type string with a description.
variable "public_subnet_2" {
  type        = string
  description = "Valid subnets in which to deploy a server"
}

# Define a variable named "security_groups" of type list of strings with a description.
variable "security_groups" {
  type        = list(string)
  description = "list of security groups"
}