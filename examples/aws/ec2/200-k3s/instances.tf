resource "aws_instance" "sgw-1" {
  ami                         = var.us-west-2a-arm64-2004
  instance_type               = "t4g.nano"
  user_data                   = file("cloud-init/sgw.yml")
  subnet_id                   = aws_subnet.pub_sub_1.id
  associate_public_ip_address = "true"
  vpc_security_group_ids      = [aws_security_group.ssh_only.id]
  availability_zone           = "us-west-2a"
  tags = {
    Name    = "sgw-1"
    Manager = "terraform"
  }
}

resource "aws_instance" "k3s-1" {
  ami                         = var.us-west-2a-arm64-2004
  instance_type               = "t4g.micro"
  user_data                   = file("cloud-init/base.yml")
  subnet_id                   = aws_subnet.priv_sub_1.id
  associate_public_ip_address = "false"
  vpc_security_group_ids      = [aws_security_group.k3s_cluster_sg.id]
  availability_zone           = "us-west-2a"
  tags = {
    Name    = "k3s-1"
    Manager = "terraform"
  }
}

resource "aws_instance" "k3s-2" {
  ami                         = var.us-west-2a-arm64-2004
  instance_type               = "t4g.micro"
  user_data                   = file("cloud-init/base.yml")
  subnet_id                   = aws_subnet.priv_sub_2.id
  associate_public_ip_address = "false"
  vpc_security_group_ids      = [aws_security_group.k3s_cluster_sg.id]
  availability_zone           = "us-west-2b"
  tags = {
    Name    = "k3s-2"
    Manager = "terraform"
  }
}

resource "aws_instance" "k3s-3" {
  ami                         = var.us-west-2a-arm64-2004
  instance_type               = "t4g.micro"
  user_data                   = file("cloud-init/base.yml")
  subnet_id                   = aws_subnet.priv_sub_3.id
  associate_public_ip_address = "false"
  vpc_security_group_ids      = [aws_security_group.k3s_cluster_sg.id]
  availability_zone           = "us-west-2c"
  tags = {
    Name    = "k3s-3"
    Manager = "terraform"
  }
}
