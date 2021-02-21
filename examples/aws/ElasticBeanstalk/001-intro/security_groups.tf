resource "aws_security_group" "redis_sg" {
    name = "redis-sg"
    description = "Allow incoming Redis connections"
    vpc_id = aws_vpc.eb_vpc.id
    ingress {
        from_port = 6379
        to_port = 6379
        protocol = "TCP"
    }
}
resource "aws_security_group" "flask_sg" {
    name = "flask-sg"
    description = "Allow incoming Flask/Gunicorn connections"
    vpc_id = aws_vpc.eb_vpc.id
    ingress {
        from_port = 8000
        to_port = 8000
        protocol = "TCP"
    }
}
resource "aws_security_group" "web_lb_sg" {
    name = "web-sg"
    description = "Allow incoming HTTP connections"
    vpc_id = aws_vpc.eb_vpc.id
    ingress {
        from_port = 80
        to_port = 80
        protocol = "TCP"
    }
}