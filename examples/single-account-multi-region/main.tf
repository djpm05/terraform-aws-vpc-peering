// Creates a peering between VPCs in the same account, but different regions
module "single_account_multi_region" {
  source = "../../"

  providers = {
    aws.this = aws.this
    aws.peer = aws.peer
  }
  
  this_vpc_id = var.this_vpc_id
  peer_vpc_id = var.peer_vpc_id
  this_ecosystem = var.ecosystem
  this_region = var.this_region
  peer_region = var.peer_region


  auto_accept_peering = true

  tags = {
    Name        = "${this_ecosystem}-${this_region}-to-${peer_region}"
    Ecosystem	= "${this_ecosystem}"
  }
}
