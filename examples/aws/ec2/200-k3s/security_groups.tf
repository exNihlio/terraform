resource "aws_security_group" "ssh_only" {
  name        = "ssh-sg"
  description = "Allow SSH into instances"
  vpc_id      = aws_vpc.k3s_vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}

resource "aws_security_group" "k3s_cluster_sg" {
  name        = "k3s_cluster_sg"
  description = "Allow K3s cluster traffic"
  vpc_id      = aws_vpc.k3s_vpc.id
  ## Allow all ICMP traffic
  ingress {
    from_port = 0
    to_port   = 0
    protocol  = "ICMP"
    cidr_blocks = [aws_subnet.pub_sub_1.cidr_block,
      aws_subnet.priv_sub_1.cidr_block,
      aws_subnet.priv_sub_2.cidr_block,
    aws_subnet.priv_sub_3.cidr_block]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = [aws_subnet.pub_sub_1.cidr_block]
  }
  ## Etcd
  ingress {
    from_port = 2379
    to_port   = 2380
    protocol  = "TCP"
    cidr_blocks = [aws_subnet.priv_sub_1.cidr_block,
      aws_subnet.priv_sub_2.cidr_block,
    aws_subnet.priv_sub_3.cidr_block]
  }
  ## K3s
  ingress {
    from_port = 6443
    to_port   = 6443
    protocol  = "TCP"
    cidr_blocks = [aws_subnet.priv_sub_1.cidr_block,
      aws_subnet.priv_sub_2.cidr_block,
    aws_subnet.priv_sub_3.cidr_block]
  }
  ## Flannel VXLAN
  ingress {
    from_port = 8472
    to_port   = 8472
    protocol  = "UDP"
    cidr_blocks = [aws_subnet.priv_sub_1.cidr_block,
      aws_subnet.priv_sub_2.cidr_block,
    aws_subnet.priv_sub_3.cidr_block]
  }
  ## Metrics server
  ingress {
    from_port = 10250
    to_port   = 10250
    protocol  = "TCP"
    cidr_blocks = [aws_subnet.priv_sub_1.cidr_block,
      aws_subnet.priv_sub_2.cidr_block,
    aws_subnet.priv_sub_3.cidr_block]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}