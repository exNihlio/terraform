# This is a private AWS Zone
resource "aws_route53_zone" "dev" {
    name = "dev.io"
    vpc {
        vpc_id = aws_vpc.lxd.id
    }
}
