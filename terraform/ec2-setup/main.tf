provider "aws" {
  region = var.region
}

# Define a network interface
resource "aws_network_interface" "space_engineers_eni" {
  subnet_id       = var.subnet_id
  security_groups = [aws_security_group.server_sg.id]

  tags = {
    Name = var.eni_name
  }
}

resource "aws_instance" "space_engineers" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.eni_name
  }

  network_interface {
    device_index          = 0
    network_interface_id  = aws_network_interface.space_engineers_eni.id
  }

  root_block_device {
    volume_size = var.root_volume_size
    volume_type = var.root_volume_type
  }
}

resource "aws_security_group" "server_sg" {
  name        = "space-engineers-sg"
  description = "Security group for Space Engineers Server"

  ingress {
    from_port   = 27016
    to_port     = 27016
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 27015
    to_port     = 27015
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
