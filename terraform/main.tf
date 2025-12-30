########################################
# Terraform & Provider Configuration
########################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}


########################################
# Security Group
########################################

data "aws_security_group" "linuxserver" {
  name = "LinuxServer"
}



########################################
# EC2 Instance
########################################

resource "aws_instance" "devops_server" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 (ap-south-1)
  instance_type = "t2.micro"

  # Existing key pair
  key_name = "linux1"

  # Existing security group
  vpc_security_group_ids = [data.aws_security_group.linuxserver.id]

  
  #Root volume size (IMPORTANT)
  root_block_device {
    volume_size = 30        # 30 GB storage
    volume_type = "gp3"     # Best & cheapest
    delete_on_termination = true
  }

  tags = {
    Name = "devops-ci-cd-server"
  }
}

########################################
# Outputs
########################################

output "ec2_public_ip" {
  description = "Public IP of DevOps EC2 server"
  value       = aws_instance.devops_server.public_ip
}

