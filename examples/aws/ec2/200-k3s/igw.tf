resource "aws_internet_gateway" "k3s_igw" {
  vpc_id = aws_vpc.k3s_vpc.id
  tags = {
    Name    = "k3s-igw"
    manager = "Terraform"
  }
}