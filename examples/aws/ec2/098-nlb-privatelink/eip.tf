resource "aws_eip" "client_ngw_eip" {
    vpc = "true"
}

resource "aws_eip" "server_ngw_eip" {
    vpc = "true"
}