resource "aws_route_table_association" "lb_1_rtb_assoc" {
    subnet_id = aws_subnet.lb_sub_1.id
    route_table_id = aws_route_table.igw_public.id
}
resource "aws_route_table_association" "lb_2_rtb_assoc" {
    subnet_id = aws_subnet.lb_sub_2.id
    route_table_id = aws_route_table.igw_public.id
}
resource "aws_route_table_association" "eb_1_rtb_assoc" {
    subnet_id = aws_subnet.eb_sub_1.id
    route_table_id = aws_route_table.igw_public.id
}
resource "aws_route_table_association" "eb_2_rtb_assoc" {
    subnet_id = aws_subnet.eb_sub_2.id
    route_table_id = aws_route_table.igw_public.id
}