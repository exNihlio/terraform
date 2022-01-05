resource "aws_nat_gateway" "k3s_ngw" {
  allocation_id = aws_eip.ngw_eip.id
  subnet_id     = aws_subnet.pub_sub_1.id
  tags = {
    Name    = "k3s-ngw"
    manager = "terraform"
  }
}