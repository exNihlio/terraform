resource "aws_ebs_volume" "lxd-1-be" {
    type = "gp2"
    size = "40"
    availability_zone = "us-west-2a"
    tags = {
        Name = "lxd-1-be"
    }
}
