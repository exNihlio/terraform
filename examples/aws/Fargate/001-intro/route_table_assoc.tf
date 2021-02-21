resource "aws_route_table_association" "flaskapp_rtb_sub_priv_1" {
    subnet_id = aws_subnet.sub_priv_1.id
    route_table_id = aws_route_table.ecs_ngw_rtb.id
}
resource "aws_route_table_association" "flaskapp_rtb_sub_priv_2" {
    subnet_id = aws_subnet.sub_priv_2.id
    route_table_id = aws_route_table.ecs_ngw_rtb.id
}
resource "aws_route_table_association" "flaskapp_rtb_sub_pub_1" {
    subnet_id = aws_subnet.sub_pub_1.id
    route_table_id = aws_route_table.ecs_igw_rtb.id
}
resource "aws_route_table_association" "flaskapp_rtb_sub_pub_2" {
    subnet_id = aws_subnet.sub_pub_2.id
    route_table_id = aws_route_table.ecs_igw_rtb.id
}