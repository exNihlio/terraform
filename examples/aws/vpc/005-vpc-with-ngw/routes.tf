resource "aws_route" "igw" {
    vpc_id = aws_vpc.terraform-example.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform-example
    }
    tags = {
        manager = "terraform"
    }
}
# There must exist a route for the private subnets to reach the NAT gateway
resource "aws_route" "ngw" {
    vpc_id = aws_vpc.terraform-example.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.terraform-example.id
    }
    tags = {
        manager = "terraform"
    }
}
