provider "aws" {
   access_key = var.aws_access_key
   secret_key = var.aws_secret_key
   token = var.aws_api_token
   region = var.aws_region
   skip_credentials_validation = true
}

# TODO: hardcode all variables of the module directly in this file (except
# private_key_file and public_key_file which are exposed to the user).
module "cluster" {
  source  = "weibeld/kubeadm/aws"
  version = "0.0.2"

  # Required variables
  private_key_file = var.private_key
  public_key_file  = var.public_key

  # Optional variables
  cluster_name           = "single-cluster"
  pod_network_cidr_block = var.pod_network_cidr
  num_workers            = var.num_workers
}
