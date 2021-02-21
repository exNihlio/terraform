resource "aws_vpc" "eb_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "eb_vpc"
    }
}