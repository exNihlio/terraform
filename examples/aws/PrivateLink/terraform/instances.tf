resource "aws_instance" "sgw-client-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.pub_sub_1.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.ssh_only_client.id ]
    tags = {
        Name = "sgw-1"
        Manager = "terraform"
    }
}
resource "aws_instance" "sgw-server-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.server_pub_sub_1.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.ssh_only_server.id ]
    tags = {
        Name = "sgw-server-2"
        Manager = "terraform"
    }
}
resource "aws_instance" "nlb-client-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.priv_sub_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.client_sg.id ]
    tags = {
        Name = "nlb-server-1"
        Manager = "terraform"
    }
}

resource "aws_instance" "nlb-server-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.server_priv_sub_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.web_sg.id ]
    tags = {
        Name = "nlb-server-1"
        Manager = "terraform"
    }
}

resource "aws_instance" "nlb-server-2" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.server_priv_sub_2.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.web_sg.id ]
    tags = {
        Name = "nlb-server-2"
        Manager = "terraform"
    }
}
