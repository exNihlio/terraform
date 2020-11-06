resource "aws_vpc" "lab_vpc" {
    cidr_block = var.vpc_cidr
}