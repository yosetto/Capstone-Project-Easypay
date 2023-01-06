variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-east-1"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "ASIARDEHJGIYOPEY4YFU"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "K/l2YT3n3XlLLg/rOPjOM2XORly1OwBLpk0FfLI3"
}

variable "aws_api_token" {
   description = "AWS API Token"
   default = "FwoGZXIvYXdzEO///////////wEaDM87kDSIH7A/tLKJECK1ASVNMg7XxQDkoSmNJWxNgFnPXuBblml4ezgd3Gk7Hr2nRhgl9HJ0axRhgEkm5wn7jSnHmJrSOFlgFVa7uQKpypZEDx0XDRKlLXwCH7sL6xWICyrSHp/I0nABjIoGcvkj98GD099WkxvVcxQXknm48WrbAZZLoLERIW8IJbd45FEHWtnZaOHjFrierwcYvHLn171V5ALHnwSxgNV2v9zQDeEWKul6ouBxdLQ18Z8+ZMhSq+VReREou6/inQYyLaCKGGbB0tvMVfhjAXQcqVSMMV+1SaCr3zK/LbzGE4ec0RNrCpDZmcqkHddczQ=="
}

variable "num_workers" {
  type        = number
  description = "Number of worker nodes."
  default     = 3
}

variable "pod_network_cidr" {
  type        = string
  description = "IP address range of the Pod network of the cluster in CIDR format."
  default     = "10.244.0.0/16"
}

variable "public_key" {
  type        = string
  description = "Path to a file with a public key in OpenSSH format. The public key must belong to var.private_key."
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
  type        = string
  description = "Path to a file with a private key. The private key must belong to var.public_key."
  default     = "~/.ssh/id_rsa"
}
