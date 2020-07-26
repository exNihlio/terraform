provider "aws" {
    region = var.region
}

# Belongs to the ECS service
module "ecs-vpc" {
    source = "./modules/vpc"
    vpc_name = var.vpc_name
    vpc_cidr = var.vpc_cidr
}

module "ecs-cluster" {
    source = "./modules/ecs-cluster"
    ecs_cluster_name = var.ecs_cluster_name 
    ecs_capacity_providers = var.ecs_capacity_providers
}
