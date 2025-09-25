
resource "aws_vpc" "terraform_vpc" {
  cidr_block = var.cidr
  tags = {
    Name = "terraform_vpc"
  }
}

resource "aws_subnet" "terraform_sub_one" {
  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.cidr_block_one
  availability_zone = var.availability_zone
  tags = {
    Name = "tf_subnet_one"
  } 
}

resource "aws_subnet" "terraform_sub_two" {
  vpc_id            = aws_vpc.terraform_vpc.id
  cidr_block        = var.cidr_block_two
  tags = {
    Name = "tf_subnet_two"
  }
}

resource "aws_internet_gateway" "tf_ig" {
    vpc_id = aws_vpc.terraform_vpc.id
    tags = {
        Name = "tf_ig"
    }
}


resource "aws_route_table" "tf_route_one" {
    vpc_id = aws_vpc.terraform_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.tf_ig.id
    }
    tags = {
        Name = "tf_route_one"
    }
}

resource "aws_route_table" "tf_route_two" {
    vpc_id = aws_vpc.terraform_vpc.id

    tags = {
        Name = "tf_route_two"
    } 
}

resource "aws_route_table_association" "a" {
    subnet_id = aws_subnet.terraform_sub_one.id
    route_table_id = aws_route_table.tf_route_one.id
}

resource "aws_route_table_association" "b" {
    subnet_id = aws_subnet.terraform_sub_two.id
    route_table_id = aws_route_table.tf_route_two.id
}

