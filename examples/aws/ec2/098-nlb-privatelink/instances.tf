# This is where things start to get interesting. An EC2 instance is
# what most people commonly start with in their AWS learning journey.
# While the AWS console nominally supports simply spinning up a new
# EC2 instance and will happily run a wizard for you, this isn't how
# things are normally done in production

# It is best to explicitly create resources and allow other services to
# use them. While clicking through a wizard might work for trying out a service
# this can make it difficult to be aware of what changes have been made or what
# resources were created. Therefore, in common practice, one should create a VPC
# with subnet(s), security groups, routing tables etc and then deploy an EC2 
# instance into the VPC, rather than creating them ad-hoc.

# This Terraform code will take mostly everything learned in the VPC examples and
# then apply this to creating EC2 instances. When we are finished, we will have an
# instance, in a VPC, that is configured with cloud-init: https://cloudinit.readthedocs.io/en/latest/
# available to SSH into.  

# Read about cloud-init in the cloud-init-readme.md here in this lesson

## Jump host for client VPC
resource "aws_instance" "sgw-client-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.pub_sub_1.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.ssh_only_client.id ]
    #availability_zone = "us-west-2a"
    tags = {
        Name = "sgw-1"
        Manager = "terraform"
    }
}
## Jump host for server VPC
resource "aws_instance" "sgw-server-1" {
    ami = var.us-west-2a-amd64-2004
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.server_pub_sub_1.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.ssh_only_server.id ]
    #availability_zone = "us-west-2a"
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
    #availability_zone = "us-west-2a"
    tags = {
        Name = "nlb-consumer-1"
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
    #availability_zone = "us-west-2a"
    tags = {
        Name = "nlb-producer-1"
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
    #availability_zone = "us-west-2a"
    tags = {
        Name = "nlb-producer-2"
        Manager = "terraform"
    }
}
