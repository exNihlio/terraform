resource "aws_volume_attachment""lxd-1-be" {
    device_name = "/dev/sdh"
    volume_id = aws_ebs_volume.lxd-1-be.id
    instance_id = aws_instance.lxd-1.id
}
