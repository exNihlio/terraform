# First subnet for the ALB
resource "aws_subnet" "sub_pub_1" {
    vpc_id = aws_vpc.gitlab_vpc.id
    cidr_block = "10.72.1.0/24"
    availability_zone = "us-west-2a"
    map_public_ip_on_launch = true
    tags = {
        Name = "gitlab-sub-pub-1"
        manager = "terraform"
    }
}
# Second subnet for the ALB. ALB requires minimum two
# subnets in two AZs
resource "aws_subnet" "sub_pub_2" {
    vpc_id = aws_vpc.gitlab_vpc.id
    cidr_block = "10.72.2.0/24"
    availability_zone = "us-west-2b"
    map_public_ip_on_launch = true
    tags = {
        Name = "gitlab-sub-pub-2"
        manager = "terraform"
    }
}
# Subnet for the ECS Service
resource "aws_subnet" "sub_priv_1" {
    vpc_id = aws_vpc.gitlab_vpc.id
    cidr_block = "10.72.3.0/24"
    availability_zone = "us-west-2a"
    tags = {
        Name = "gitlab-sub-priv-1"
        manager = "terraform"
    }
}
# Subnet for the ECS Service
resource "aws_subnet" "sub_priv_2" {
    vpc_id = aws_vpc.gitlab_vpc.id
    cidr_block = "10.72.4.0/24"
    availability_zone = "us-west-2b"
    tags = {
        Name = "gitlab-sub-priv-2"
        manager = "terraform"
    }
}
# Subnet for the ECS Service
resource "aws_subnet" "sub_priv_3" {
    vpc_id = aws_vpc.gitlab_vpc.id
    cidr_block = "10.72.5.0/28"
    availability_zone = "us-west-2c"
    tags = {
        Name = "gitlab-sub-priv-3"
        manager = "terraform"
    }
}