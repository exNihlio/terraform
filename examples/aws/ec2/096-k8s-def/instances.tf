## AMI mapping
## amis['region']['arch']['os']
resource "aws_instance" "sgw-1" {
    ami = var.amis["us-west-2"]["amd64"]["ubuntu"]["1804"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.pub-sub-1.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.ssh_only.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "sgw-1"
        Manager = "Terraform"
    }
}

resource "aws_instance" "k8s_node_1" {
    ami = var.amis["us-west-2"]["amd64"]["ubuntu"]["1804"]
    # Kubeadm requires at least 2 vCPUS to install
    instance_type = "t2.medium"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.priv-sub-1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.k8s_sg.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "k8s-node-1"
        Manager = "Terraform"
    }
}

resource "aws_instance" "k8s_node_2" {
    ami = var.amis["us-west-2"]["amd64"]["ubuntu"]["1804"]
    # Kubeadm requires at least 2 vCPUS to install
    instance_type = "t2.medium"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.priv-sub-2.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.k8s_sg.id ]
    availability_zone = "us-west-2b"
    tags = {
        Name = "k8s-node-2"
        Manager = "Terraform"
    }
}

resource "aws_instance" "k8s_node_3" {
    ami = var.amis["us-west-2"]["amd64"]["ubuntu"]["1804"]
    # Kubeadm requires at least 2 vCPUS to install
    instance_type = "t2.medium"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.priv-sub-3.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.k8s_sg.id ]
    availability_zone = "us-west-2c"
    tags = {
        Name = "k8s-node-3"
        Manager = "Terraform"
    }
}

# resource "aws_instance" "etcd-node-1" {
#     ami = var.us-west-2a-centos7-amd64
#     instance_type = "t2.micro"
#     user_data = file("cloud-init/base.yml")
#     subnet_id = aws_subnet.etcd-sub-1.id
#     associate_public_ip_address = "false"
#     vpc_security_group_ids = [ aws_security_group.etcd_sg.id ]
#     availability_zone = "us-west-2a"
#     tags = {
#         Name = "etcd-node-1"
#         Manager = "terraform"
#     }
# }

# resource "aws_instance" "etcd-node-2" {
#     ami = var.us-west-2a-centos7-amd64
#     instance_type = "t2.micro"
#     user_data = file("cloud-init/base.yml")
#     subnet_id = aws_subnet.etcd-sub-2.id
#     associate_public_ip_address = "false"
#     vpc_security_group_ids = [ aws_security_group.etcd_sg.id ]
#     availability_zone = "us-west-2b"
#     tags = {
#         Name = "etcd-node-2"
#         Manager = "terraform"
#     }
# }

# resource "aws_instance" "etcd-node-3" {
#     ami = var.us-west-2a-centos7-amd64
#     instance_type = "t2.micro"
#     user_data = file("cloud-init/base.yml")
#     subnet_id = aws_subnet.etcd-sub-3.id
#     associate_public_ip_address = "false"
#     vpc_security_group_ids = [ aws_security_group.etcd_sg.id ]
#     availability_zone = "us-west-2c"
#     tags = {
#         Name = "etcd-node-3"
#         Manager = "terraform"
#     }
# }
