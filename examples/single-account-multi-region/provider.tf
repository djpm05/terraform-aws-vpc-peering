provider "aws" {
  alias      = "this"
  region     = var.this_region
  access_key = var.aws_this_access_key
  secret_key = var.aws_this_secret_key
}

provider "aws" {
  alias      = "peer"
  region     = var.peer_region
  access_key = var.aws_this_access_key
  secret_key = var.aws_this_secret_key
}
