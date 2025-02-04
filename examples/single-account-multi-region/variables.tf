// Variables are required to pass them via Terratest
// on fixtures creation
variable "this_vpc_id" {}

variable "peer_vpc_id" {}

variable "aws_this_access_key" {
  description = "AWS Access Key for requester account"
}

variable "aws_this_secret_key" {
  description = "AWS Secret Key for requester account"
}

variable "ecosystem" {
  description = "The ecosystem this VPC Peering connection is for"
  type        = string
  default     = "UNSET"
}

variable "this_region" {
  description = "The source region"
  type        = string
  default     = "us-east-1"
}

variable "peer_region" {
  description = "The destination region"
  type        = string
  default     = "us-east-2"
}
