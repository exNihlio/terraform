# This is a private zone available only in the VPC
resource "aws_route53_zone" "dev" {
  name = "test.dev"
  vpc {
    vpc_id = aws_vpc.k3s_vpc.id
  }
}
