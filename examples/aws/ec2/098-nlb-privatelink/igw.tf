resource aws_internet_gateway "privatelink-igw" {
    vpc_id = aws_vpc.privatelink-vpc.id
    tags = {
        Name = "privatelink-igw"
        manager = "Terraform"
    }
}