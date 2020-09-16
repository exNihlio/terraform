# This is a private zone available only in the VPC
resource "aws_route53_zone" "dev" {
    name = "nlb.dev"
    vpc { 
        vpc_id =  aws_vpc.privatelink_client_vpc.id
    }
}

resource "aws_route53_zone" "server" {
    name = "nlb.server"
    vpc { 
        vpc_id =  aws_vpc.privatelink_server_vpc.id
    }
}