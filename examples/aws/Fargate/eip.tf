resource "aws_eip" "ngw-eip" {
    vpc = true
    tags = {
        Manager = "terraform"
    }
}