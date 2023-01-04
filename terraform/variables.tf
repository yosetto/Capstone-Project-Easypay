variable "aws_region" {
   description = "AWS Region to launch servers"
   default = "eu-central-1"
}

variable "aws_access_key" {
   description = "AWS User Access Key"
   default = "ASIARDEHJGIYFZPVNTLL"
}

variable "aws_secret_key" {
   description = "AWS User Secret Key"
   default = "uE14Mf1K2cy4booOM1MnryW7UcsxgFaxYkUOzB+s"
}

variable "aws_api_token" {
   description = "AWS API Token"
   default = "FwoGZXIvYXdzELz//////////wEaDM5bav9qNr5uks7wryK1AVhv7VBXgjadlKbTAowKdNFWU4GbA1A0pZyZjN9Nx/YY3PriyENHurqu1aycu85mOC+1w9jqhE7y21LE+XKh+3fNWzOKOHtOxie4VoNfFku3N35yHanfzOeqVfO1kQZaSxsH19OfejE3BEHhO3/3JkqHZ5pRdNLa+rtXSVt4mLQH1ZA9MCaer1I1AHygOFAUD8lxY9q68LkfGlZORx2rdD+ZYNq8mh6j4Je2vgCSX4u7/v/1OPAo15HXnQYyLed74rY/XwuF+E3UpAhq7jXif1jZ3VuYLSBRaYz/Y9EmJSeUN3wyLLgPoYmE8A=="
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
