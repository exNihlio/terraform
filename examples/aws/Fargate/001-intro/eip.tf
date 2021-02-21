resource "aws_eip" "ngw_eip" {
    vpc = true
    tags = {
        Manager = "terraform"
    }
}