# An internet gateway is a service that allows EC2 instances
# and other compute resources with public IPs to access and be
# accessed online.
resource "aws_internet_gateway" "terraform-example" {
    vpc_id = aws_vpc.terraform-example-vpc.id
}
