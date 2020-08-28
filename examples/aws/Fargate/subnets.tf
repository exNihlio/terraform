# First subnet for the ALB
resource "aws_subnet" "sub-pub-1" {
    vpc_id = aws_vpc.flaskapp-vpc.id
    cidr_block = "10.72.1.0/24"
    availability_zone = "us-west-2a"
    tags {
        Name = "flask-app-sub-pub-1"
        manager = "terraform"
    }
}
# Second subnet for the ALB. ALB requires minimum two
# subnets in two AZs
resource "aws_subnet" "sub-pub-2" {
    vpc_id = aws_vpc.flaskapp-vpc.id
    cidr_block = "10.72.2.0/24"
    availability_zone = "us-west-2b"
    tags = {
        Name = "flask-app-sub-pub-2"
        manager = "terraform"
    }
}
# Subnet for the ECS Service
resource "aws_subnet" "sub-priv-1" {
    vpc_id = aws_vpc.flaskapp-vpc.id
    cidr_block = "10.72.3.0/24"
    availability_zone = "us-west-2a"
    tags = {
        Name = "flask-app-sub-priv-1"
        manager = "terraform"
    }
}