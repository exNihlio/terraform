# In order for the route to work, it must be associated with a subnet.
# In this case, the public subnet will associated with a route that
# will send all non-local traffic to the internet gateway, effectively
# giving this subnet public internet access. 
resource "aws_route_table_association" "sub_1" {
    subnet_id = aws_subnet.pub-sub-1.id
    route_table_id = aws_route_table.igw.id
}
