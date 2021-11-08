module "vpc" {
  source = "./modules/vpc"
}
module "ec2" {
  source    = "./modules/ec2"
  sg-id     = module.vpc.sg-id
  subnet-id = module.vpc.subnet-id
  ami-id    = module.vpc.ami-id
}