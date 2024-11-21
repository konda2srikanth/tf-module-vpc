resource "aws_vpc_peering_connection" "main" {
  peer_owner_id = data.aws_caller_identity.current.id
  peer_vpc_id   = var.default_vpc_id
  vpc_id        = aws_vpc.main.id
  auto_accept   = true
}