data "template_file" "es_usw2a_task_def" {
    template = file("ecs_tasks/elasticsearch_usw2a.json")
    vars = {
        aws_account_id = data.aws_caller_identity.current.id
        region = var.region
        es_repo = var.es_ecr_repo
        es_tag = var.es_ecr_tag
    }
}
data "template_file" "es_usw2b_task_def" {
    template = file("ecs_tasks/elasticsearch_usw2b.json")
    vars = {
        aws_account_id = data.aws_caller_identity.current.id
        region = var.region
        es_repo = var.es_ecr_repo
        es_tag = var.es_ecr_tag
    }
}
data "template_file" "es_usw2c_task_def" {
    template = file("ecs_tasks/elasticsearch_usw2c.json")
    vars = {
        aws_account_id = data.aws_caller_identity.current.id
        region = var.region
        es_repo = var.es_ecr_repo
        es_tag = var.es_ecr_tag
    }
}
data "template_file" "kibana_task_def" {
    template = file("ecs_tasks/kibana.json")
    vars = {
        aws_account_id = data.aws_caller_identity.current.id
        region = var.region
        kibana_repo = var.kibana_repo
        kibana_tag = var.kibana_tag
    }
}
data "template_file" "flask_app_task_def" {
    template = file("ecs_tasks/flask.json")
    vars = {
        aws_account_id = data.aws_caller_identity.current.id
        region = var.region
        flask_app_repo = var.flask_app_repo
        flask_app_tag = var.flask_app_tag
        redis_url = aws_elasticache_cluster.ecs_redis.cache_nodes.0.address
    }
}