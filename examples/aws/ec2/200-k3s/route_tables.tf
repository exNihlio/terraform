resource "aws_route_table" "igw" {
  vpc_id = aws_vpc.k3s_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.k3s_igw.id
  }
}
resource "aws_route_table" "ngw" {
  vpc_id = aws_vpc.k3s_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.k3s_ngw.id
  }
}

