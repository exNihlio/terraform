resource "aws_nat_gateway" "git_ngw" {
    allocation_id = aws_eip.ngw_eip.id
    subnet_id = aws_subnet.sub_pub_1.id
    depends_on = [ aws_internet_gateway.git_igw ]
    tags = {
        Name = "git_ngw"
    }
}