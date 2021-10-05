resource "aws_internet_gateway" "es_igw" {
    vpc_id = aws_vpc.es_vpc.id
}