resource "aws_route_table_association" "pub_sub_1" {
  subnet_id      = aws_subnet.pub_sub_1.id
  route_table_id = aws_route_table.igw.id
}

resource "aws_route_table_association" "priv_sub_1" {
  subnet_id      = aws_subnet.priv_sub_1.id
  route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "priv_sub_2" {
  subnet_id      = aws_subnet.priv_sub_2.id
  route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "priv_sub_3" {
  subnet_id      = aws_subnet.priv_sub_3.id
  route_table_id = aws_route_table.ngw.id
}