# Routes are how network traffic reaches it's destination
# By default, all AWS subnets have a local route associated
# with them. Meaning that resources in a subnet in a VPC are
# automatically able to reach each other.

# However, with internet gateways, nat gateways, VPC peering,
# and VPNs, there are a myriad of destinations for network traffic
# and AWS makes no assumptions on how that traffic is routed
resource "aws_route_table" "igw" {
    vpc_id = aws_vpc.privatelink-vpc.id
    # The route block containers two parts, 'cidr_block' which is
    # the destination of the route. And the gateway_id, which is the
    # default gateway for the traffic.
    # This route does not overwrite the local route.
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.privatelink-igw.id
    }
}
# NAT gateway for the ES nodes
resource "aws_route_table" "ngw" {
    vpc_id = aws_vpc.privatelink-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.privatelink-ngw.id
    }
}

