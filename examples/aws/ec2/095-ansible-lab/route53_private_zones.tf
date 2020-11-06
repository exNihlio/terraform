resource aws_route53_zone "lab_zone" {
    name = "lab.dev"
    vpc {
        vpc_id = aws_vpc.lab_vpc.id
    }
}