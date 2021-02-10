resource "aws_ebs_volume" "k8s_node_1" {
    availability_zone = "${var.region}a"
    size = 50
    tags = {
        Name = "k8s-node-1-docker-disk"
        Manager = "Terraform"
    }
}

resource "aws_ebs_volume" "k8s_node_2" {
    availability_zone = "${var.region}b"
    size = 50
    tags = {
        Name = "k8s-node-2-docker-disk"
        Manager = "Terraform"
    }
}

resource "aws_ebs_volume" "k8s_node_3" {
    availability_zone = "${var.region}c"
    size = 50
    tags = {
        Name = "k8s-node-3-docker-disk"
        Manager = "Terraform"
    }  
}