resource "aws_volume_attachment" "k8s_node_1" {
    device_name = "/dev/xvdb"
    volume_id = aws_ebs_volume.k8s_node_1.id
    instance_id = aws_instance.k8s_node_1.id
}

resource "aws_volume_attachment" "k8s_node_2" {
    device_name = "/dev/xvdb"
    volume_id = aws_ebs_volume.k8s_node_2.id
    instance_id = aws_instance.k8s_node_2.id  
}

resource "aws_volume_attachment" "k8s_node_3" {
    device_name = "/dev/xvdb"
    volume_id = aws_ebs_volume.k8s_node_3.id
    instance_id = aws_instance.k8s_node_3.id
}