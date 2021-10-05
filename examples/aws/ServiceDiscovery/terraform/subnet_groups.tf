resource "aws_elasticache_subnet_group" "eb_redis" {
    name = "eb-redis-subnet-roup"
    subnet_ids = [aws_subnet.sub_priv_4.id]
}