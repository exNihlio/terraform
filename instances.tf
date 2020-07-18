# All AMIs are Ubuntu
resource "aws_instance" "sgw1" {
    ami = var.amis.us-west-2-amd64-2004
    instance_type = "t3a.micro"
    user_date = file("cloud-init/base.yml")
    subnet_id = aws_subnet.sgw-sub-a.id
    association_public_ip = True
    vpc_security_group_ids = [ aws_security_group.sgw.id ]
    availability_zone = us-west-2a
    tags = {
        Name = "sgw1"
        Manager = "Terraform"
        Role = "Security Gateway"
    }
}

resource "aws_instance" "lxd-1" {
    ami = var.amis.us-west-2-amd64-2004
    instance_type = "t3a.small"
    subnet_id = aws_subnet.lxd-sub-a.id
    vpc_security_group_ids = [ aws_security_group.lxd.id ]
    availability_zone = us-west-2a
    tags = {
        Name = "lxd-1"
        Manager = "Terraform"
        Role = "Container Host"
    }
}
