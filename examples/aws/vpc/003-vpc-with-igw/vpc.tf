resource "aws_vpc" "terraform-example" {
    cidr_block = "10.72.0.0/16"
    tag = {
        Name =  "terraform-example-vpc"
    }
}
