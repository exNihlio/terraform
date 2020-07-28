resource "aws_vpc" "terraform-example-vpc" {
    cidr_block = "10.72.0.0/16"
    tags = {
        Name =  "terraform-example-vpc"
    }
}
