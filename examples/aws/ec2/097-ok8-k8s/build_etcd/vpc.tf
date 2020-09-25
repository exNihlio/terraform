resource "aws_vpc" "CodeBuild_vpc" {
    cidr_block = "10.72.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "CodeBuild_vpc"
        Manager = "terraform"
    }
}