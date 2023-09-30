#---ec2-variables.tf

# Define a variable named "user_data" of type string with a default value.
variable "user_data" {
  type    = string
  default = "IyEvYmluL2Jhc2gKCmFwdCB1cGRhdGUgLXkKYXB0IHVwZ3JhZGUgLXkKY3VybCAtZnNTTCBodHRwczovL2dldC5kb2NrZXIuY29tIC1vIGdldC1kb2NrZXIuc2gKc2ggZ2V0LWRvY2tlci5zaAp1c2VybW9kIC1hRyBzdWRvIHVidW50dQp1c2VybW9kIC1hRyBhZG0gdWJ1bnR1CnVzZXJtb2QtYUcgZG9ja2VyIHVidW50dQ=="
}

variable "manager_user_data" {
  type    = string
  default = "IyEvYmluL2Jhc2gKCmFwdCB1cGRhdGUgLXkKYXB0IHVwZ3JhZGUgLXkKY3VybCAtZnNTTCBodHRwczovL2dldC5kb2NrZXIuY29tIC1vIGdldC1kb2NrZXIuc2gKc2ggZ2V0LWRvY2tlci5zaAp1c2VybW9kIC1hRyBzdWRvIHVidW50dQp1c2VybW9kIC1hRyBhZG0gdWJ1bnR1CnVzZXJtb2QgLWFHIGRvY2tlciB1YnVudHUKZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNvbS90b20tcHVudGlsbG8vZG9ja2VyX2NvbXBvc2VfZmlsZXMuZ2l0Cm12IC9kb2NrZXJfY29tcG9zZV9maWxlcyB+Lw=="
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