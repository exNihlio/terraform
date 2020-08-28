resource "aws_vpc" "flaskapp-vpc" {
    cidr_block = "10.72.0.0"
    tags {
        Name = "flaskapp-vpc"
    }
}