# # terraform {
# #   required_providers {
# #     aws = {
# #       source  = "hashicorp/aws"
# #       version = "~> 4.16"
# #     }
# #   }

# #   required_version = ">= 1.2.0"
# # }
# # provider "aws" {
# #   region  = "ap-northeast-1"
# # }

# # resource "aws_instance" "app_server" {
# #   ami           = "ami-030cf0a1edb8636ab"
# #   instance_type = "t2.micro"

# #   tags = {
# #     Name = "ExampleAppServerInstance"
# #   }
# # }



# provider "aws" {
#   region = "ap-southeast-2" # Replace with your desired region

# }

# resource "aws_instance" "ec2" {
#   ami           = "ami-066afac102d181674" # Replace with your desired Amazon Linux AMI ID
#   instance_type = "t2.micro"
#   key_name      = "samy" # Replace with the name of your EC2 key pair

#   # Configure the EC2 instance's network settings
#   vpc_security_group_ids = ["sg-0f33f4cd325fcce18"] # Replace with the ID of your security group
#   subnet_id              = "subnet-0ea5cf6800b9df0bd" # Replace with the ID of your subnet
#   associate_public_ip_address = true

#   # Attach an IAM role to the EC2 instance
#   iam_instance_profile = "admin-access" # Replace with the name of your IAM instance profile

#   # Use cloud-init to install and configure the CodeDeploy agent
#   user_data = <<-EOF
#               #!/bin/bash
#               sudo yum update -y
#               sudo yum install -y ruby
#               cd /home/ec2-user
#               wget https://aws-codedeploy-ap-southeast-2.s3.ap-southeast-2.amazonaws.com/latest/install
#               chmod +x ./install
#               sudo ./install auto
#               EOF

#   tags = {
#         Name = "UAT"
#         }
# }

# output "instance_public_ip" {
#   value = aws_instance.ec2.public_ip
# }
