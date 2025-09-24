resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [local.sec_grp_id]
  subnet_id = var.subnet_one_id 

  # associate_public_ip_address = true
  
  tags = {
    Name = "TerraformExample"
  }
  
  # security_groups = [local.sec_grpname]
}
