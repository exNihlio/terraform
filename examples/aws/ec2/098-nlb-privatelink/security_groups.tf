# Security group for client SGW
resource "aws_security_group" "ssh_only_client" {
    name = "ssh-sg"
    description = "Allow SSH into instances"
    vpc_id = aws_vpc.privatelink_client_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]

    }
}
# Security for server SGW
resource "aws_security_group" "ssh_only_server" {
    name = "ssh_only_server"
    description = "Allow SSH into instances"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}

# Security group for the client instance
resource "aws_security_group" "client_sg" {
    name = "client_security_group"
    description = "Allow SSH from jump host"
    vpc_id = aws_vpc.privatelink_client_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = [ aws_subnet.pub_sub_1.cidr_block ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]

    }
}

# Security group for the server instances
resource "aws_security_group" "web_sg" {
    name = "web_security_group"
    description = "Allow SSH from jump host and https/http traffic"
    vpc_id = aws_vpc.privatelink_server_vpc.id
    ingress {
        from_port = 0
        to_port = 0
        protocol = "ICMP"
        cidr_blocks = [ "0.0.0.0/0"]
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
}

## NLB security group
resource "aws_security_group" "nlb_web_sg" {
    name = "nlb-web-sg"
    description = "Allow inboud traffic to server subnets"
    vpc_id = aws_vpc.privatelink_server_vpc.id
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
}

## VPC endpoint security group
resource "aws_security_group" "endpoint_web_sg" {
    name = "endpoint-web-sg"
    description = "Allow https connections through the VPC endpoint service"
    vpc_id = aws_vpc.privatelink_client_vpc.id
    ingress {
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}