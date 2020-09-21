# This is a private zone available only in the VPC
resource "aws_route53_zone" "dev" {
    name = "okd.dev"
    vpc { 
        vpc_id =  aws_vpc.okd-vpc.id
    }
}