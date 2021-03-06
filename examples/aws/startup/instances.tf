# All AMIs are Ubuntu
resource "aws_instance" "sgw1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.sgw-sub-a.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.sgw.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "sgw1"
        Manager = "Terraform"
        Role = "Security Gateway"
    }
}

resource "aws_instance" "lxd-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.lxd-sub-a.id
    vpc_security_group_ids = [ aws_security_group.lxd.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "lxd-1"
        Manager = "Terraform"
        Role = "Container Host"
    }
}
