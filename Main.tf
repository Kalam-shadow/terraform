module "vpc" {
  source = "./modules/vpc"
}


module "ec2" {
  source = "./modules/ec2"
  vpc_id = module.vpc.vpc_id
  subnet_one_id = module.vpc.subnet_one_id
  ebs_volume_id = module.ebs.ebs_volume_id
  ami = "ami-064fad1cd2e859c98"
}

module "ebs" {
  source = "./modules/ebs"
}
