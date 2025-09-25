variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  description = "Amazon Machine Image (AMI) ID"
  type        = string
  default     = "ami-0b982602dbb32c5bd"
}

variable "availability_zone" {
  description = "The availability zone in which to launch the instance"
  type        = string
  default     = "ap-south-1a"
}

locals {
  sec_grp_id = aws_security_group.instance.id
}

variable "subnet_one_id" {
  description = "The ID of the Subnet"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
  default     = ""
}

variable "ebs_volume_id" {
  description = "The ID of the EBS volume to attach"
  type        = string
  default     = ""
}