
resource "aws_ecs_service" "es_usw2a" {
    name = "es_usw2a"
    cluster = aws_ecs_cluster.es_cluster.id
    task_definition = aws_ecs_task_definition.es_usw2a.arn
    desired_count = 1
    launch_type = "FARGATE"
    ## Register containers launched in this service into the service discovery namespace
    service_registries {
      # registry_arn = aws_service_discovery_service.seeds.arn
      registry_arn = aws_service_discovery_service.es_us_west_2a.arn
    }
    network_configuration {
        subnets = [aws_subnet.sub_priv_1.id]
        security_groups = [aws_security_group.es_sg.id]
    }
    depends_on = [
      aws_cloudwatch_log_group.es_usw2a
    ]
}
resource "aws_ecs_service" "es_usw2b" {
    name = "es_usw2b"
    cluster = aws_ecs_cluster.es_cluster.id
    task_definition = aws_ecs_task_definition.es_usw2b.arn
    desired_count = 1
    launch_type = "FARGATE"
    ## Register containers launched in this service into the service discovery namespace
    service_registries {
      # registry_arn = aws_service_discovery_service.seeds.arn
      registry_arn = aws_service_discovery_service.es_us_west_2b.arn
    }
    network_configuration {
        subnets = [aws_subnet.sub_priv_2.id]
        security_groups = [aws_security_group.es_sg.id]
    }
    depends_on = [
      aws_cloudwatch_log_group.es_usw2b
    ]
}
resource "aws_ecs_service" "es_usw2c" {
    name = "es_usw2c"
    cluster = aws_ecs_cluster.es_cluster.id
    task_definition = aws_ecs_task_definition.es_usw2c.arn
    desired_count = 1
    launch_type = "FARGATE"
    ## Register containers launched in this service into the service discovery namespace
    service_registries {
      # registry_arn = aws_service_discovery_service.seeds.arn
      registry_arn = aws_service_discovery_service.es_us_west_2c.arn
    }
    network_configuration {
        subnets = [aws_subnet.sub_priv_3.id]
        security_groups = [aws_security_group.es_sg.id]
    }
    depends_on = [
      aws_cloudwatch_log_group.es_usw2c
    ]
}
## Kibana service
resource "aws_ecs_service" "kibana" {
    name = "kibana"
    cluster = aws_ecs_cluster.es_cluster.id
    task_definition = aws_ecs_task_definition.kibana.arn
    desired_count = 1
    launch_type = "FARGATE"
    service_registries {
      registry_arn = aws_service_discovery_service.kibana.arn
    }
    load_balancer {
      target_group_arn = aws_lb_target_group.kibana_tg.arn
      container_name = "kibana"
      container_port = "5601"
    }
    network_configuration {
        subnets = [aws_subnet.sub_priv_1.id]
        security_groups = [aws_security_group.kibana_sg.id]
    }
}
## Flask service
resource "aws_ecs_service" "flaskapp" {
    name = "flaskapp"
    cluster = aws_ecs_cluster.es_cluster.id
    task_definition = aws_ecs_task_definition.flaskapp.arn
    desired_count = 1
    launch_type = "FARGATE"
    load_balancer {
      target_group_arn = aws_lb_target_group.flask_tg.arn
      container_name = "flaskapp"
      container_port = "8000"
    }
    network_configuration {
        subnets = [aws_subnet.sub_priv_1.id,aws_subnet.sub_priv_2.id]
        security_groups = [aws_security_group.flaskapp_sg.id]
    }
}