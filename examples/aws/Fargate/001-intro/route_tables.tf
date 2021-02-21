resource "aws_route_table" "ecs-ngw-rtb" {
    vpc_id = aws_vpc.flaskapp-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.flaskapp-ngw.id
    }
}