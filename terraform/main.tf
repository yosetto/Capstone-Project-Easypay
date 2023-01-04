provider "aws" {
   access_key = var.aws_access_key
   secret_key = var.aws_secret_key
   token = var.aws_api_token
   region = var.aws_region
   skip_credentials_validation = true
}

module "cluster" {
  source  = "weibeld/kubeadm/aws"
  version = "~> 0.2"
}
