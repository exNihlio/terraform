resource aws_internet_gateway "elasticsearch-igw" {
    vpc_id = aws_vpc.elasticsearch-vpc.id
    tags = {
        Name = "elasticsearch-igw"
        manager = "Terraform"
    }
}