resource "aws_subnet" "sgw_usw2a_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.sgw_1a_subnet
    availability_zone = "${var.region}a"
    tags = {
        Name = "sgw_us2a_1"
        Manager = "Terraform"
    }
}
## Web servers
resource "aws_subnet" "web_usw2a_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.web_1a_subnet
    availability_zone = "${var.region}a"
    tags = {
        Name = "web_usw2a_1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "web_usw2b_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.web_1b_subnet
    availability_zone = "${var.region}b"
    tags = {
        Name = "web_usw2b_1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "web_usw2c_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.web_1c_subnet
    availability_zone = "${var.region}c"
    tags = {
        Name = "web_usw2c_1"
        Manager = "Terraform"
    }
}

## Application Middleware
resource "aws_subnet" "app_usw2a_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.app_1a_subnet
    availability_zone = "${var.region}a"
    tags = {
        Name = "app_usw2a_1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "app_usw2b_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.app_1b_subnet
    availability_zone = "${var.region}b"
    tags = {
        Name = "app_usw2b_1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "app_usw2c_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.app_1c_subnet
    availability_zone = "${var.region}c"
    tags = {
        Name = "app_usw2c_1"
        Manager = "Terraform"
    }
}

## DB Servers
resource "aws_subnet" "db_usw2a_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.db_1a_subnet
    availability_zone = "${var.region}a"
    tags = {
        Name = "db_usw2a_1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "db_usw2b_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.db_1b_subnet
    availability_zone = "${var.region}b"
    tags = {
        Name = "db_usw2b_1"
        Manager = "Terraform"
    }
}

resource "aws_subnet" "db_usw2c_1" {
    vpc_id = aws_vpc.lab_vpc.id
    cidr_block = var.db_1c_subnet
    availability_zone = "${var.region}c"
    tags = {
        Name = "db_usw2c_1"
        Manager = "Terraform"
    }  
}