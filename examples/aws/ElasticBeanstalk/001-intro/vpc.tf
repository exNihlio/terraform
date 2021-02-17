resource "aws_vpc" "eb_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "eb_vpc"
    }
}