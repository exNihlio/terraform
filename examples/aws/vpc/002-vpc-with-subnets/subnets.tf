# We are creating an public subnet. Right now, as this subnet 
# does not have an internet gateway, the distinction is meaningless,
# when we create these, it will be important.
resource "aws_subnet" "pub_sub_1" {
    # The cidr_block is the allocation of IP addresses to the subnet.
    # These IP address are allocated from the cidr block that is assigned
    # to the VPC that the subnet is in.
    cidr_block = "10.72.1.0/24"
    # The VPC id is so we can associate the subnet and the VPC together.
    # Since the VPC ID won't be known until it is created, and we want all
    # of the resources to be created at once, Terraform uses interpolation 
    # syntax. Essentially this is object oriented access to Terraform attributes.
    # Every resource has a unique address based on <resource_type>.<resource_name>
    #
    # 
    # Furthermore, dependency management will ensure that the VPC is created first
    # and then the subnets. Terraform has excellent automatic dependency management
    # but it also supports manual dependency management.
    vpc_id = aws_vpc.terrafom-example.id
    # Subnets are constrained to availability zones. It is a good practice to duplicate your
    # subnets and hence, your services across availability zones
    availability_zone = "us-west-2a"
}

# A private subnet is a subnet that does not have a route to 
# to an internet gateway. 
resource "aws_subnet" "priv_sub_1" {
    cidr_block = "10.72.2.0/24"
    vpc_id = aws_vpc.terrafomr-example.id
    availability_zone = "us-west-2a"
}
