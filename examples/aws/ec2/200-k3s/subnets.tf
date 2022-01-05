resource "aws_subnet" "pub_sub_1" {
  cidr_block        = "10.72.1.0/24"
  vpc_id            = aws_vpc.k3s_vpc.id
  availability_zone = "us-west-2a"
}

resource "aws_subnet" "priv_sub_1" {
  cidr_block        = "10.72.2.0/24"
  vpc_id            = aws_vpc.k3s_vpc.id
  availability_zone = "us-west-2a"
}

resource "aws_subnet" "priv_sub_2" {
  cidr_block        = "10.72.3.0/24"
  vpc_id            = aws_vpc.k3s_vpc.id
  availability_zone = "us-west-2b"
}

resource "aws_subnet" "priv_sub_3" {
  cidr_block        = "10.72.4.0/24"
  vpc_id            = aws_vpc.k3s_vpc.id
  availability_zone = "us-west-2c"
}