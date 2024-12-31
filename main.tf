module "networking" {
  source               = "./networking"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  cidr_public_subnet   = var.cidr_public_subnet
  ap_availability_zone = var.ap_availability_zone
  cidr_private_subnet  = var.cidr_private_subnet
}

module "security_groups" {
  source              = "./security-groups"
  ec2_sg_name         = "SG for EC2 to enable SSH(22), HTTPS(443) and HTTP(80)"
  vpc_id              = module.networking.dev_proj_1_vpc_id
  public_subnet_cidr_block   = tolist(module.networking.public_subnet_cidr_block)
  private_subnet_cidr_block  = tolist(module.networking.private_subnet_cidr_block)
  
}


module "ec2" {
  source                    = "./ec2"
  ami_id                    = var.ec2_ami_id
  instance_type             = "t2.medium"
  tag_name                  = "Webserver:Ubuntu EC2"
  subnet_id                 = tolist(module.networking.dev_proj_1_public_subnets)[0]
  sg_for_webserver           = [module.security_groups.sg_ec2_sg_ssh_http_id]
  enable_public_ip_address  = true

}

module "rds_db_instance" {
  source               = "./rds"
  networking_subnet_ids   = module.networking.dev_proj_1_private_subnets
  db_subnet_group_name = "dev_proj_1_rds_subnet_group"
  subnet_groups        = tolist(module.networking.dev_proj_1_private_subnets)[0]
  rds_mysql_sg_id      = module.security_groups.rds_mysql_sg_id
  mysql_db_identifier  = "mydb"
  mysql_username       = "dbuser"
  mysql_password       = "dbpassword"
  mysql_dbname         = "devprojdb"
}


module "eks_cluster" {
  source      = "./eks"
  cluster_name = "dev_proj_1_eks_cluster"
  subnet_ids   = module.networking.dev_proj_1_public_subnets
  sg_ids       = module.security_groups.worker_node_sg_id
  ec2_ssh_key  = "myawskey"
 
}


