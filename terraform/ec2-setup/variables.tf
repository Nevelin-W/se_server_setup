variable "region" {
  type        = string
  description = "AWS region"
}

variable "ami_id" {
  type        = string
  default     = "ami-0a628e1e89aaedf80"
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Instance type for the server"
  default     = "t2.micro"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the instance"
}

variable "root_volume_type" {
  type        = string
  description = "value for the root volume type"
}

variable "root_volume_size" {
  type        = number
  description = "Size of the root volume (in GB)"
}

variable "ec2_name" {
  type        = string
  description = "value for the EC2 name"
}

variable "eni_name" {
  type        = string
  description = "value for the ENI name"
}



