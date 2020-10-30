output "jump-host-ip" {
    value = aws_instance.sgw-1.public_ip
}

# output "ETCD_HOST_1" {
#     value = aws_instance.etcd-node-1.private_ip
# }

# output "ETCD_HOST_2" {
#     value = aws_instance.etcd-node-2.private_ip
# }

# output "ETCD_HOST_3" {
#     value = aws_instance.etcd-node-3.private_ip
# }

# output "WORKER_HOST_1" {
#     value = aws_instance.okd-node-1.private_ip
# }

# output "WORKER_HOST_2" {
#     value = aws_instance.okd-node-2.private_ip
# }

# output "WORKER_HOST_3" {
#     value = aws_instance.okd-node-3.private_ip
# }