resource "aws_security_group" "alb-flaskapp-public-sg" {
    name = "alb-flaskapp-public"
    description = "SG for incoming web connections to the flask app ALB"
    vpc_id = aws_vpc.flaskapp-vpc.id 
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

resource "aws_security_group" "flaskapp-sg" {
    name = "flaskapp-sg"
    description = "SG to allow incoming connections to flask ecs service"
    ingress {
        from_port = 8000
        to_port = 8000
        protocol = "TCP"
        security_groups = [ aws_security_group.alb-flaskapp-public-sg.id ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]

    }
}