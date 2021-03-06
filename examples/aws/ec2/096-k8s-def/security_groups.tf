# Security groups are essentially an instance based firewalls.
# They are stateful, and assigned to individual instances, unlike
# NACLs which are assigned to subnets
# As security groups are stateful, return connections are 
# automatically allowed.
resource "aws_security_group" "ssh_only" {
    # The name of the security group
    name = "ssh-sg"
    # A friendly description of the SG
    description = "Allow SSH into instances"
    # The VPC that his subnet will belong to.
    vpc_id = aws_vpc.k8s_vpc.id
    # By default, security groups operate in a deny-all mode.
    # At the end of every security group rule collection is
    # a deny. As such, there is no such as a user added deny 
    # rule in security groups. 
    ingress {
        # You can specify a range of ports. If your rules do not 
        # include a port range, you can add multiple ingress blocks
        from_port = 22
        to_port = 22
        protocol = "TCP"
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

resource "aws_security_group" "k8s_sg" {
    name = "k8s_security_group"
    description = "Security group to allow k8s traffic"
    vpc_id = aws_vpc.k8s_vpc.id
    ## Allow ICMP traffic
    ingress {
        from_port = 0
        to_port = 0
        protocol = "ICMP"
        cidr_blocks = [ aws_subnet.priv-sub-1.cidr_block,
                        aws_subnet.priv-sub-2.cidr_block,
                        aws_subnet.priv-sub-3.cidr_block ]
    }
    # Let us SSH in from the security gateway host
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = [ aws_subnet.pub-sub-1.cidr_block ]
    }
    # Inter-cluster communication
    ingress {
        from_port = 1
        to_port = 65535
        protocol = "TCP"
        cidr_blocks = [ aws_subnet.priv-sub-1.cidr_block,
                        aws_subnet.priv-sub-2.cidr_block,
                        aws_subnet.priv-sub-3.cidr_block ]
    }
    # External application access
    ingress {
        from_port = 30000
        to_port = 32767
        protocol = "TCP"
        cidr_blocks = [ "0.0.0.0/0"]
    }
    # Flannel overlay network (UDP)
    ingress {
        from_port = 8285
        to_port = 8285
        protocol = "UDP"
        cidr_blocks = [ aws_subnet.priv-sub-1.cidr_block,
                        aws_subnet.priv-sub-2.cidr_block,
                        aws_subnet.priv-sub-3.cidr_block ]
    }
    # Flannel overlay network (vxlan)
    ingress {
        from_port = 8472
        to_port = 8472
        protocol = "UDP"
        cidr_blocks = [ aws_subnet.priv-sub-1.cidr_block,
                        aws_subnet.priv-sub-2.cidr_block,
                        aws_subnet.priv-sub-3.cidr_block ]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}

# resource "aws_security_group" "etcd_sg" {
#     name = "etcd_sg"
#     description = "Allow etcd traffic"
#     vpc_id = aws_vpc.okd-vpc.id
#     ingress {
#         from_port = 0
#         to_port = 0
#         protocol = "ICMP"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
#     ingress {
#         from_port = 22
#         to_port = 22
#         protocol = "TCP"
#         cidr_blocks = [ aws_subnet.pub-sub-1.cidr_block ]
#     }
#     ingress {
#         from_port = 2379
#         to_port = 2380
#         protocol = "TCP"
#         cidr_blocks = [ aws_subnet.priv-sub-1.cidr_block,
#                         aws_subnet.priv-sub-2.cidr_block,
#                         aws_subnet.priv-sub-3.cidr_block,
#                         aws_subnet.etcd-sub-1.cidr_block,
#                         aws_subnet.etcd-sub-2.cidr_block,
#                         aws_subnet.etcd-sub-3.cidr_block]
#     }
#     egress {
#         from_port = 0
#         to_port = 0
#         protocol = "-1"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
# }