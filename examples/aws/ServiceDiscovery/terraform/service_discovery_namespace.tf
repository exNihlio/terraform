resource "aws_service_discovery_private_dns_namespace" "demo" {
    name = "demo"
    description = "Service Discovery namespace for elasticsearch"
    vpc = aws_vpc.es_vpc.id
}

resource "aws_service_discovery_private_dns_namespace" "web" {
    name = "web"
    description = "Service Discovery namespace for Kibana"
    vpc = aws_vpc.es_vpc.id
}