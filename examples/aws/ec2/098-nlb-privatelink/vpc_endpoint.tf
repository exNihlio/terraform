resource "aws_vpc_endpoint" "privatelink" {
    service_name = join("", ["com.amazonaws.vpce", ".", var.region, ".", 
                             aws_vpc_endpoint_service.privatelink_service.id
                            ]
                        )
    vpc_endpoint_type = "Interface"
    security_group_ids = [aws_security_group.endpoint_web_sg.id ]
    subnet_ids = [aws_subnet.priv_endpoint_1.id]
    vpc_id = aws_vpc.privatelink_client_vpc.id
    depends_on = [aws_vpc_endpoint_service.privatelink_service]
    
}