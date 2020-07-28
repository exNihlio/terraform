# Security groups are essentially an instance based firewalls.
# They are stateful, and assigned to individual instances, unlike
# NACLs which are assigned to subnets
# As security groups are stateful, return connections are 
# automatically allowed.
resource "aws_security_group" "ssh-only" {
    # The name of the security group
    name = "ssh-sg"
    # A friendly description of the SG
    description = "Allow SSH into instances"
    # The VPC that his subnet will belong to.
    vpc_id = aws_vpc.terraform-example-vpc.id
    # By default, security groups operate in a deny-all mode.
    # At the end of every security group rule collection is
    # a deny. As such, there is no such as a user added deny 
    # rule in security groups. 
    ingress {
        # You can specify a range of ports. If your rules do not 
        # include a port range, you can add multiple ingress blocks
        from_port = 22
        to_port = 22
        protocol = "tcp"
        # Multiple cidr blocks can be included. You can also specify a security group
        # id as the source.
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        # To allow all protocols: TCP/UDP/ICMP etc, use "-1"
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]

    }
}
