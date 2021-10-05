resource "aws_security_group" "alb_public_sg" {
    name = "alb-public"
    description = "SG for incoming web connections ALB"
    vpc_id = aws_vpc.es_vpc.id 
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
resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    vpc_id = aws_vpc.es_vpc.id
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
resource "aws_security_group" "es_sg" {
    name = "es-sg"
    description = "Security Group for allowing es connections"
    vpc_id = aws_vpc.es_vpc.id 
    ingress {
        from_port = 9200
        to_port = 9200
        protocol = "TCP"
        cidr_blocks = [aws_subnet.sub_priv_1.cidr_block, aws_subnet.sub_priv_2.cidr_block,
                       aws_subnet.sub_priv_3.cidr_block, aws_subnet.sub_pub_1.cidr_block,
                       aws_subnet.sub_pub_2.cidr_block ]
    }
    ingress {
        from_port = 9300
        to_port = 9300
        protocol = "TCP"
        cidr_blocks = [aws_subnet.sub_priv_1.cidr_block, aws_subnet.sub_priv_2.cidr_block,
                       aws_subnet.sub_priv_3.cidr_block, ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}
resource "aws_security_group" "kibana_sg" {
    name = "kibana-sg"
    description = "Security Group for allowings Kibana connections"
    vpc_id = aws_vpc.es_vpc.id
    ingress {
        from_port = 5601
        to_port = 5601
        protocol = "TCP"
        cidr_blocks = [aws_subnet.sub_priv_1.cidr_block, aws_subnet.sub_priv_2.cidr_block,
                       aws_subnet.sub_priv_3.cidr_block, aws_subnet.sub_pub_1.cidr_block,
                       aws_subnet.sub_pub_2.cidr_block]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}
## Redis SG
resource "aws_security_group" "redis_sg" {
    name = "redis-sg"
    description = "Allow incoming Redis connections"
    vpc_id = aws_vpc.es_vpc.id
    ingress {
        from_port = 6379
        to_port = 6379
        protocol = "TCP"
        cidr_blocks = [aws_subnet.sub_priv_1.cidr_block, aws_subnet.sub_priv_2.cidr_block,
                       aws_subnet.sub_priv_3.cidr_block, aws_subnet.sub_priv_4.cidr_block]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}
## Flask SG
resource "aws_security_group" "flaskapp_sg" {
    name = "flaskapp-sg"
    description = "SG to allow incoming connections to flask ecs service"
    vpc_id = aws_vpc.es_vpc.id
    ingress {
        from_port = 8000
        to_port = 8000
        protocol = "TCP"
        cidr_blocks = [ aws_subnet.sub_pub_1.cidr_block, aws_subnet.sub_pub_2.cidr_block ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
}