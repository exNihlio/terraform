resource "aws_subnet" "sub" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_block
}

resource "aws_ecs_service" "service" {

}

resource "aws_ecs_task_definition" "task_definition" {

}
