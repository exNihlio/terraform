resource "aws_route_table_association" "CodeBuild_pub" {
    subnet_id = aws_subnet.CodeBuild_pub.id
    route_table_id = aws_route_table.CodeBuild_pub.id
}

resource "aws_route_table_association" "CodeBuild_priv" {
    subnet_id = aws_subnet.CodeBuild_priv.id
    route_table_id = aws_route_table.CodeBuild_priv.id
}