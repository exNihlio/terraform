resource "aws_internet_gateway" "flaskapp-igw" {
    vpc_id = aws_vpc.flaskapp-vpc.id
}