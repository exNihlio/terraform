variable "vpc_name" {
    default = "ecs-cluster"
}

variable "vpc_cidr" {
    default = "10.11.0.0/16"
}

variable "region" {
    default = "us-west-2"
}

variable "ecs_cluster_name" {
    default = "general_cluster"
}

variable "ecs_capacity_providers" {
    default = "FARGATE"
}
