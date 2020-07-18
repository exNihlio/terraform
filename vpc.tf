resource "aws_vpc" "lxd" {
    cidr_block = var.vpc-cidr
    enable_dns_hostnames = "true"
    tags = {
        Name = "lxd-vpc"
        Manager = "Terraform"
    }
}
