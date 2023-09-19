# ---security_groups main.tf

# Create a security group named "allow_http" to allow HTTP inbound traffic.
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"
  vpc_id      = var.vpc_id # Use the VPC ID specified in the variable

  ingress {
    description = "HTTP from Anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP traffic from any IP address
  }

  ingress {
    description = "SSH from Anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH traffic from any IP address
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"          # Allow all outbound traffic
    cidr_blocks      = ["0.0.0.0/0"] # Allow traffic to any IP address
    ipv6_cidr_blocks = ["::/0"]      # Allow IPv6 traffic to any IP address
  }

  tags = {
    Name = "allow_http"
  }
}

resource "aws_security_group" "docker_cluster" {
  name        = "docker_cluster"
  description = "Allow traffic between nodes"
  vpc_id      = var.vpc_id # Use the VPC ID specified in the variable

  ingress {
    description = "traffic between manager nodes"
    from_port   = 2377
    to_port     = 2377
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Allow traffic between manager nodes from the specified IP range
  }

  ingress {
    description = "overlay network discovery"
    from_port   = 7946
    to_port     = 7946
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Allow overlay network discovery from the specified IP range
  }

  ingress {
    description = "overlay network traffic"
    from_port   = 4789
    to_port     = 4789
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Allow overlay network traffic from the specified IP range
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"          # Allow all outbound traffic
    cidr_blocks      = ["0.0.0.0/0"] # Allow traffic to any IP address
    ipv6_cidr_blocks = ["::/0"]      # Allow IPv6 traffic to any IP address
  }

  tags = {
    Name = "docker_cluster"
  }
}


# Create a security group named "allow_tls" to allow TLS inbound traffic
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = var.vpc_id # Use the VPC ID specified in the variable

  ingress {
    description = "TLS from Anywhere"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow TLS traffic from any IP address
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"          # Allow all outbound traffic
    cidr_blocks      = ["0.0.0.0/0"] # Allow traffic to any IP address
    ipv6_cidr_blocks = ["::/0"]      # Allow IPv6 traffic to any IP address
  }

  tags = {
    Name = "allow_tls"
  }
}

resource "aws_security_group" "jenkins_port" {
  name        = "jenkins port"
  description = "Allow access to jenkins"
  vpc_id      = var.vpc_id # Use the VPC ID specified in the variable

  ingress {
    description = "jenkins traffic"
    from_port   = 2377
    to_port     = 2377
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"] # Allow traffic between manager nodes from the specified IP range
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"          # Allow all outbound traffic
    cidr_blocks      = ["0.0.0.0/0"] # Allow traffic to any IP address
    ipv6_cidr_blocks = ["::/0"]      # Allow IPv6 traffic to any IP address
  }

  tags = {
    Name = "allow_jenkins_traffic"
  }
}