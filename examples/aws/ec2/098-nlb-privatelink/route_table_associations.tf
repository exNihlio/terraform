# In order for the route to work, it must be associated with a subnet.
# In this case, the public subnet will associated with a route that
# will send all non-local traffic to the internet gateway, effectively
# giving this subnet public internet access. 

# Client subnets
resource "aws_route_table_association" "client_pub_sub_1" {
    subnet_id = aws_subnet.pub_sub_1.id
    route_table_id = aws_route_table.client_igw.id
}

resource "aws_route_table_association" "client_priv_sub_1" {
    subnet_id = aws_subnet.priv_sub_1.id
    route_table_id = aws_route_table.client_ngw.id
}
## Server Subnets
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
########################
## PrivateLink Routes ##
########################
# resource "aws_route_table_association" "sub-priv-1" {
#     subnet_id = aws_subnet.priv-sub-1.id
#     route_table_id = aws_route_table.ngw.id
# }

# resource "aws_route_table_association" "sub-priv-1" {
#     subnet_id = aws_subnet.priv-sub-1.id
#     route_table_id = aws_route_table.ngw.id
# }