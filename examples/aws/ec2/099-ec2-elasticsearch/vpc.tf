resource "aws_vpc" "elasticsearch-vpc" {
    cidr_block = "10.72.0.0/16"
    tags = {
        Name =  "elasticsearch-vpc"
    }
}
