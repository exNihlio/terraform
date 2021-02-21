resource "aws_vpc" "flaskapp_vpc" {
    cidr_block = "10.72.0.0/16"
    tags = {
        Name = "flaskapp-vpc"
    }
}