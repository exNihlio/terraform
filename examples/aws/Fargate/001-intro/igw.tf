resource "aws_internet_gateway" "flaskapp_igw" {
    vpc_id = aws_vpc.flaskapp_vpc.id
}