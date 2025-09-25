variable "availability_zone" {
  description = "The availability zone in which to create the EBS volume"
  type        = string
  default  = "ap-south-1a"
}

variable "size" {
  description = "The size of the EBS volume in GiB"
  type        = number
  default     = 1
}

variable "type" {
  description = "The type of the EBS volume"
  type        = string
  default     = "gp2"
}