# In order for the route to work, it must be associated with a subnet.
# In this case, the public subnet will associated with a route that
# will send all non-local traffic to the internet gateway, effectively
# giving this subnet public internet access. 
resource "aws_route_table_association" "sub_1" {
    subnet_id = aws_subnet.pub-sub-1.id
    route_table_id = aws_route_table.igw.id
}

resource "aws_route_table_association" "sub-priv-1" {
    subnet_id = aws_subnet.priv-sub-1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "sub-priv-2" {
    subnet_id = aws_subnet.priv-sub-2.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "sub-priv-3" {
    subnet_id = aws_subnet.priv-sub-3.id
    route_table_id = aws_route_table.ngw.id
}

# resource "aws_route_table_association" "etcd-priv-1" {
#     subnet_id = aws_subnet.etcd-sub-1.id
#     route_table_id = aws_route_table.ngw.id
# }

# resource "aws_route_table_association" "etcd-priv-2" {
#     subnet_id = aws_subnet.etcd-sub-2.id
#     route_table_id = aws_route_table.ngw.id
# }

# resource "aws_route_table_association" "etcd-priv-3" {
#     subnet_id = aws_subnet.etcd-sub-3.id
#     route_table_id = aws_route_table.ngw.id
# }