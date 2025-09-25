resource "aws_instance" "example" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [local.sec_grp_id]
  subnet_id = var.subnet_one_id 
  availability_zone = var.availability_zone
  # associate_public_ip_address = true
  tags = {
    Name = "TerraformExample"
  }
    # security_groups = [local.sec_grpname]
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/xvdf"
  volume_id   = var.ebs_volume_id
  instance_id = aws_instance.example.id
  force_detach = true
}