# Client Jump Host IP
output "sgw-client-1-ip" {
    value = aws_instance.sgw-client-1.public_ip
}
# Server Jump Host IP
output "sgw-server-1-ip" {
    value = aws_instance.sgw-server-1.public_ip
}

# ClientVPCID
output "ClientVPCID" {
    value = aws_vpc.privatelink_client_vpc.id
}
# ServerVPCID
output "ServerVPCID" {
    value = aws_vpc.privatelink_server_vpc.id
}
# NLB Subnets (private subnets)
output "NLBsubnets" {
    value = join(", ", [aws_subnet.server_priv_sub_1.id, aws_subnet.server_priv_sub_2.id])
}

# VPC Endpoint subnets (endpoint subnets)
output "VPCEndpointSubnets" {
    value = join(", ", [aws_subnet.priv_endpoint_1.id, aws_subnet.priv_endpoint_2.id])
}

# Source Security Group (client)
output "SourceSecurityGroupID" {
    value = aws_security_group.client_sg.id
}

output "nlb-server-1" {
    value = aws_instance.nlb-server-1.private_ip
}

output "nlb-server-2" {
    value = aws_instance.nlb-server-2.private_ip
}

output "nlb-cname" {
    value = aws_lb.nlb_private_link.dns_name
}

output "privatelink_client_dns" {
    value = aws_vpc_endpoint.privatelink.dns_entry[0]["dns_name"]
}
