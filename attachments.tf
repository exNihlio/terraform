resource "aws_volume_attachment""lxd-1-be" {
    device_name = "/dev/sdb"
    volume_id = aws_ebs_volume.lxd-1-be.id
    instance_id = aws_instance.lxd-1.id
}
