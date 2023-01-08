provider "aws" {
   #access_key = var.aws_access_key
   #secret_key = var.aws_secret_key
   #token = var.aws_api_token
   region = var.aws_region
   #skip_credentials_validation = true
}

# TODO: hardcode all variables of the module directly in this file (except
# private_key_file and public_key_file which are exposed to the user).
module "network" {
  source     = "weibeld/kubeadm/aws//modules/network"
  version    = "~> 0.2"
  cidr_block = "10.0.0.0/16"
  tags       = { "terraform-kubeadm:cluster" = module.cluster.cluster_name }
}

module "cluster" {
  source    = "weibeld/kubeadm/aws"
  version   = "~> 0.2"
  vpc_id    = module.network.vpc_id
  subnet_id = module.network.subnet_id
    # Required variables
  private_key_file = var.private_key
  public_key_file  = var.public_key
}
