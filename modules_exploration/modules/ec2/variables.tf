variable "region" {
  type        = string
  description = "AWS Region where the resources need to be created."
}

variable "ami" {
  type        = string
  description = "AMI id for the instance."
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance."
}