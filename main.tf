module "vpc" {
  source = "./modules/vpc"

  vpc_cidr     = "10.0.0.0/16"
  project_name = var.project_name
  environment  = var.environment
}

module "security_group" {
  source = "./modules/security-group"

  project_name = var.project_name
  vpc_id       = module.vpc.vpc_id
}

module "s3-bucket" {
  source = "./modules/s3-bucket"

  bucket_name  = "${var.project_name}-bucket301105"
  project_name = var.project_name
}

module "ec2" {
  source = "./modules/ec2"

  project_name   = var.project_name
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  security_group = [module.security_group.security_group_id]
  subnet_id      = module.vpc.public_subnet_ids[0]

}