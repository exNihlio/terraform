resource "aws_subnet" "redis_sub_1" {
    vpc_id = aws_vpc.eb_vpc.id
    cidr_block = "10.0.1.0/28"
    availability_zone = "us-west-2a"
    tags = {
        Name = "redis-sub-1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "eb_sub_1" {
    vpc_id = aws_vpc.eb_vpc.id
    cidr_block = "10.0.1.16/28"
    availability_zone = "us-west-2a"
    tags = {
        Name = "eb-sub-1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "eb_sub_2" {
    vpc_id = aws_vpc.eb_vpc.id
    cidr_block = "10.0.1.32/28"
    availability_zone = "us-west-2b"
    tags = {
        Name = "eb-sub-2"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "lb_sub_1" {
    vpc_id = aws_vpc.eb_vpc.id
    cidr_block = "10.0.2.0/28"
    availability_zone = "us-west-2a"
    tags = {
        Name = "lb-sub-1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "lb_sub_2" {
    vpc_id = aws_vpc.eb_vpc.id
    cidr_block = "10.0.2.16/28"
    availability_zone = "us-west-2b"
    tags = {
        Name = "lb-sub-2"
        Manager = "Terraform"
    }
}