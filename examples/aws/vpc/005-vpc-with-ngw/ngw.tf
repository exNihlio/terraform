# A NAT gateway is an AWS service that allows compute resources
# without public IPs to access internet resources.
resource "aws_nat_gateway" "terraform-example" {
    allocation_id = aws_eip.ngw-eip.id
    # Since NAT gateways are associated with a subnet
    # and a subnet is constrained to a single AZ, they are
    # by definition, not highly availability. If your NAT 
    # gateway and resources relying on it require HA, deploy additional
    # NAT gateways.
    subnet_id = aws_subnet.pub_sub_1.id
}
