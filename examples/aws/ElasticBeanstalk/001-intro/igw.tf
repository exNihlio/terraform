resource "aws_internet_gateway" "eb_igw" {
    vpc_id = aws_vpc.eb_vpc.id
    tags = {
        Name = "eb-igw"
    }
}