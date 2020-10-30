resource "aws_nat_gateway" "k8s_ngw" {
    allocation_id = aws_eip.ngw_eip.id
    subnet_id = aws_subnet.pub-sub-1.id
    tags = {
        Name = "k8s-ngw"
        manager = "terraform"
    }
}