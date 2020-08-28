resource "aws_route_table_association" "flaskapp-rtb" {
    subnet_id = aws_subnet.sub-priv-1.id
    route_table_id = aws_route_table.ecs-ngw-rtb.id
}