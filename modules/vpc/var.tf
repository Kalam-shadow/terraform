variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "cidr_block_one" {
    description = "CIDR block for subnet one"
    type        = string
    default     = "10.0.0.0/24"
}

variable "cidr_block_two" {
    description = "CIDR block for subnet two"
    type        = string
    default     = "10.0.128.0/24"
}

variable "availability_zone" {
  description = "The availability zone in which to create the subnet"
  type        = string
  default     = "ap-south-1a"
}