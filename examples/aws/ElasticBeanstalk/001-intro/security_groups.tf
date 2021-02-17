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