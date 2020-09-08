# This is a private zone available only in the VPC
resource "aws_route53_zone" "dev" {
    name = "es.dev"
    vpc { 
        vpc_id =  aws_vpc.elasticsearch-vpc.id
    }
}