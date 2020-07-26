resource "aws_internet_gateway" "terraform-example" {
    vpc_id = aws_vpc.terraform-example-vpc.id
}
