resource "aws_security_group" "CodeBuild" {
    name = "CodeBuild_sg"
    description = "Allow CodeBuild to egress"
    vpc_id = aws_vpc.CodeBuild_vpc.id
    egress  {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}