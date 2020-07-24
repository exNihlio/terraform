resource "aws_vpc" "terraform-example" {
    # cidr_block is the only required argument for the VPC resource
    cidr_block = "10.72.72.0/16"
    # Virtually every AWS provider resource supports the tag block.
    # It is recommended you use it, at the least to give things
    # friendly names and declare that it is managed by Terraform
    tags = {
        Name = "terraform-example-vpc"
        Manager = "terraform"
    }
}
