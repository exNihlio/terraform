resource "aws_nat_gateway" "okd-ngw" {
    allocation_id = aws_eip.ngw_eip.id
    subnet_id = aws_subnet.pub-sub-1.id
    tags = {
        Name = "okd-ngw"
        manager = "terraform"
    }
}