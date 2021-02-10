# This is a private zone available only in the VPC
resource "aws_route53_zone" "dev" {
    name = "k8s.dev"
    vpc { 
        vpc_id =  aws_vpc.k8s_vpc.id
    }
}