resource "aws_subnet" "redis_sub_1" {
    vpc_id = aws_vpc.eb_vpc.id
    cidr_block = "10.0.1.0/28"
    availability_zone = "us-west-2a"
    tags = {
        Name = "redis-sub-1"
        Manager = "Terraform"
    }
}