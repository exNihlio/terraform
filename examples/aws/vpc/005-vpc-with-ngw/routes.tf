resource "aws_route_table" "igw" {
    vpc_id = aws_vpc.terraform-example-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.terraform-example
    }
    tags = {
        manager = "terraform"
    }
}
# There must exist a route for the private subnets to reach the NAT gateway
resource "aws_route_table" "ngw" {
    vpc_id = aws_vpc.terraform-example-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.terraform-example.id
    }
    tags = {
        manager = "terraform"
    }
}
