
output "vpc_id" {    
    value = aws_vpc.terraform_vpc.id
    description = "The ID of the VPC"
}

output "subnet_one_id" {    
    value = aws_subnet.terraform_sub_one.id
    description = "The ID of the Subnet One"  
}