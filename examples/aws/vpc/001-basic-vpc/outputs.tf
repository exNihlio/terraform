output "vpc_id" {
    description = "The ID of the VPC we have created"
    value = aws_vpc.terraform-example-vpc.id
}
