resource "aws_route53_record" "k8s_node_1" {
    zone_id = aws_route53_zone.dev.id
    name = "k8s-node-1"
    type = "A"
    ttl = "300"
    records = [ aws_instance.k8s_node_1.private_ip ]
}

resource "aws_route53_record" "k8s_node_2" {
    zone_id = aws_route53_zone.dev.id
    name = "k8s-node-2"
    type = "A"
    ttl = "300"
    records = [ aws_instance.k8s_node_2.private_ip ]   
}

resource "aws_route53_record" "k8s_node_3" {
    zone_id = aws_route53_zone.dev.id
    name = "k8s-node-3"
    type = "A"
    ttl = "300"
    records = [ aws_instance.k8s_node_3.private_ip ]  
}

# resource "aws_route53_record" "etcd1" {
#     zone_id = aws_route53_zone.dev.id
#     name = "etcd-node-1"
#     type = "A"
#     ttl = "300"
#     records = [ aws_instance.etcd-node-1.private_ip ]  
# }

# resource "aws_route53_record" "etcd2" {
#     zone_id = aws_route53_zone.dev.id
#     name = "etcd-node-2"
#     type = "A"
#     ttl = "300"
#     records = [ aws_instance.etcd-node-2.private_ip ]  
# }

# resource "aws_route53_record" "etcd3" {
#     zone_id = aws_route53_zone.dev.id
#     name = "etcd-node-3"
#     type = "A"
#     ttl = "300"
#     records = [ aws_instance.etcd-node-3.private_ip ]  
# }

# resource "aws_route53_record" "etcd-server-srv-tcp" {
#     zone_id = aws_route53_zone.dev.id
#     name = "_etcd-server._tcp"
#     type = "SRV"
#     ttl = "60"
#     records = [ "0 0 2380 etcd-node-1.okd.dev",
#                 "0 0 2380 etcd-node-2.okd.dev",
#                 "0 0 2380 etcd-node-3.okd.dev"]
# }

# resource "aws_route53_record" "etcd-client-srv-tcp" {
#     zone_id = aws_route53_zone.dev.id
#     name = "_etcd-client._tcp"
#     type = "SRV"
#     ttl = "60"
#     records = [ "0 0 2379 etcd-node-1.okd.dev",
#                 "0 0 2379 etcd-node-2.okd.dev",
#                 "0 0 2379 etcd-node-3.okd.dev"]
# }

# resource "aws_route53_record" "etcd-server-srv-ssl" {
#     zone_id = aws_route53_zone.dev.id
#     name = "_etcd-server-ssl._tcp"
#     type = "SRV"
#     ttl = "60"
#     records = [ "0 0 2380 etcd-node-1.okd.dev",
#                 "0 0 2380 etcd-node-2.okd.dev",
#                 "0 0 2380 etcd-node-3.okd.dev"]
# }