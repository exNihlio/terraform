resource "aws_security_group" "ssh_only" {
    name = "ssh-only-sg"
    description = "Allow SSH into bastion host"
    vpc_id = aws_vpc.lab_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "web" {
    name = "web-sg"
    description = "Allow SSH and web traffic"
    vpc_id = aws_vpc.lab_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = 22
        cidr_blocks = [aws_subnet.sgw_usw2a_1.cidr_block]
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
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "app" {
    name = "app-sg"
    description = "Allow application connections and SSH"
    vpc_id = aws_vpc.lab_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_security_group" "db" {
    name = "db-sg"
    description = "Allow database and SSH connections"
    vpc_id = aws_vpc.lab_vpc.id
    ingress {
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }    
    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 5432
        to_port = 5432
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}