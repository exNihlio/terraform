# Elastic IPs are public addresses from AWS that can be freely
# associated to various compute resources, ensuring a continous stable
# connection. In the case of the NAT gateway an EIP is required so 
# outgoing connections can be made.
resource "aws_eip" "ngw-eip" {
    vpc = true
}
