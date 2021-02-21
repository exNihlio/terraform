resource "aws_elasticache_cluster" "ecs_redis" {
    cluster_id = "eb-redis-cluster"
    engine = "redis"
    engine_version = "3.2.4"
    node_type = "cache.t3.micro"
    num_cache_nodes = 1
    parameter_group_name = "default.redis3.2"
    port = 6379
    security_group_ids = [ aws_security_group.redis_sg.id ]
    subnet_group_name = aws_elasticache_subnet_group.eb_redis.name
}