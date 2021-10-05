resource "aws_route_table_association" "client_pub_sub_1" {
    subnet_id = aws_subnet.pub_sub_1.id
    route_table_id = aws_route_table.client_igw.id
}
resource "aws_route_table_association" "client_priv_sub_1" {
    subnet_id = aws_subnet.priv_sub_1.id
    route_table_id = aws_route_table.client_ngw.id
}
resource "aws_route_table_association" "server_pub_sub_1" {
    subnet_id = aws_subnet.server_pub_sub_1.id
    route_table_id = aws_route_table.server_igw.id
}
resource "aws_route_table_association" "server_priv_sub_1" {
    subnet_id = aws_subnet.server_priv_sub_1.id
    route_table_id = aws_route_table.server_ngw.id
}
resource "aws_route_table_association" "server_priv_sub_2" {
    subnet_id = aws_subnet.server_priv_sub_2.id
    route_table_id = aws_route_table.server_ngw.id
}
resource "aws_route_table_association" "nlb_priv_sub_1" {
    subnet_id = aws_subnet.nlb_priv_sub_1.id
    route_table_id = aws_route_table.server_ngw.id
}
resource "aws_route_table_association" "nlb_priv_sub_2" {
    subnet_id = aws_subnet.nlb_priv_sub_2.id
    route_table_id = aws_route_table.server_ngw.id
}
