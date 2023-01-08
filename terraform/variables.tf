variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-east-1"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "AKIA2FNDZX2HOVCQBAOM"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "o1YTQQltqZTY7y++ZKkqYXYzmRdSdEFYJbVAXMww"
}

variable "aws_api_token" {
   description = "AWS API Token"
   default = "FwoGZXIvYXdzEAQaDKZHdOwF2NPrUKsNiiK1AYCrtx9j+2UERQ9vSEOruIfZOnPOVcxhsmL8UO0SrhU7W7jnazJ/rwRGIjbavH98HYuSAamKLnjRcJn1ccXAlkrHp2GKHgAog7XT6j9ZoZZ2v3VoLoZOq0/O0iO6KAiTM1ISt86wYGlrlZsreNeeZ+OqzcJH4iTH/NjEZpQbXJjR4IoF4zz+zqehnx67i5FN5DglnxJPO05gpAH1TQbkaW04MWa448GbxZN38Cvak2IZO9TfUXQo6oLnnQYyLWiq7Yk5V6FObRl7siK7h9c7OJ+36nkRTUtGg+Es/awwVndxlPFjlVBPbAFZJg=="
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
