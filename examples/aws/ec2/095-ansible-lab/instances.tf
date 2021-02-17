resource "aws_instance" "sgw_1" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.sgw_usw2a_1.id
    associate_public_ip_address = "true"
    vpc_security_group_ids = [ aws_security_group.ssh_only.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "sgw-1"
        Manager = "Terraform"
    }
}

resource "aws_instance" "web_1a" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.web_usw2a_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.web.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "web-1a"
        Manager = "Terraform"
    }
}

resource "aws_instance" "web_1b" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.web_usw2b_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.web.id ]
    availability_zone = "us-west-2b"
    tags = {
        Name = "web-1b"
        Manager = "Terraform"
    }
}

resource "aws_instance" "web_1c" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.web_usw2c_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.web.id ]
    availability_zone = "us-west-2c"
    tags = {
        Name = "web-1c"
        Manager = "Terraform"
    }
}

resource "aws_instance" "app_1a" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.app_usw2a_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.app.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "app-1a"
        Manager = "Terraform"
    }
}

resource "aws_instance" "app_1b" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.app_usw2b_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.app.id ]
    availability_zone = "us-west-2b"
    tags = {
        Name = "app-1b"
        Manager = "Terraform"
    }
}

resource "aws_instance" "app_1c" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.app_usw2c_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.app.id ]
    availability_zone = "us-west-2c"
    tags = {
        Name = "app-1c"
        Manager = "Terraform"
    }
}

resource "aws_instance" "db_1a" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.app_usw2a_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.db.id ]
    availability_zone = "us-west-2a"
    tags = {
        Name = "db-1a"
        Manager = "Terraform"
    } 
}

resource "aws_instance" "db_1b" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.app_usw2b_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.db.id ]
    availability_zone = "us-west-2b"
    tags = {
        Name = "db-1b"
        Manager = "Terraform"
    }   
}

resource "aws_instance" "db_1c" {
    ami = var.amis["us-west-2"]["amd64"]["centos"]["8"]
    instance_type = "t2.micro"
    user_data = file("cloud-init/base.yml")
    subnet_id = aws_subnet.app_usw2c_1.id
    associate_public_ip_address = "false"
    vpc_security_group_ids = [ aws_security_group.db.id ]
    availability_zone = "us-west-2c"
    tags = {
        Name = "db-1c"
        Manager = "Terraform"
    } 
}