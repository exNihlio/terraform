resource aws_internet_gateway "okd-igw" {
    vpc_id = aws_vpc.okd-vpc.id
    tags = {
        Name = "okd-igw"
        manager = "Terraform"
    }
}