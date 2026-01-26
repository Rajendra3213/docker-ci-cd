variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "docker-demo"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0e86e20dae9224db8" # Ubuntu 24.04 LTS
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}


variable "access_key" {
  description = "aws-access-key"
  default = ""
}

variable "secret_key" {
  description = "aws-secret-key"
  default = ""
}