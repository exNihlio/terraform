resource "aws_nat_gateway" "flaskapp-ngw" {
    allocation_id = aws_eip.ngw-eip.id
    subnet_id = aws_subnet.sub-pub-1.id
    depends_on = [ aws_internet_gateway.flaskapp-igw ]
    tags = {
        Name = "flaskapp-ngw"
    }
}