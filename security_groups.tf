resource "aws_security_group" "sgw" {
    name = "sgw_sg"
    description = "Allow SSH to SGW host"
    vpc_id = aws_vpc.lxd.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0"]
    }
}

resource "aws_security_group" "lxd" {
    name = "lxd_sg"
    description = "Allow SSH from sgw host and application traffic"
    vpc_id = aws_vpc.lxd.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = [ aws_subnet.sgw-sub-a.cidr_block ]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0"]
    }
}
