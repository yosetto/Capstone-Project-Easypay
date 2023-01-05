variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "us-east-1"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "ASIARDEHJGIYA3ZYGS6O"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "La/2xkB4J4WfP3xe+YpHJ0MLGPQtLqhIbUKSLrje"
}

variable "aws_api_token" {
   description = "AWS API Token"
   default = "FwoGZXIvYXdzENb//////////wEaDF1ACkvb5skR7uXG7yK1AaUD05VECMXKEz1vTRkcbacm08NRfD7j1NsA2egeesDhpbY5Yn/tNgrRL8WCAiNOR6Gi+XrivXno+V6U+UdetaS4D36XCWCuBKOlr/Vum3D/VVt2qu7bmRuiCsvHBoqOXZD6rFS+F3fngVqq8/lxrAdC2XBbXmCFc633ttkjxX3RXTjKw54PR2bX2nHzTear1BwLiSckQDThwMQatq2+gB9nHQ/QQCoQUr+kitsjRj3b55tM+KcozOzcnQYyLbRC2itqtFmjJ0osSHhvfKFx4B3x/y274UFr3X0sOTWn95f8BSXcvWnBw9Lhfw=="
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
