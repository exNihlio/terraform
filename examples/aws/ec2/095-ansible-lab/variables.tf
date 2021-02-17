variable "region" {
    default = "us-west-2"
}

variable "vpc_cidr" {
    default = "10.1.0.0/16"
}
variable "sgw_1a_subnet" {
    default = "10.1.0.0/24"
}
# Web subnets
variable "web_1a_subnet" {
    default = "10.1.1.0/24"
}

variable "web_1b_subnet" {
    default = "10.1.2.0/24"
}

variable "web_1c_subnet" {
    default = "10.1.3.0/24"
}

# Application subnets
variable "app_1a_subnet" {
    default = "10.1.4.0/24"
}

variable "app_1b_subnet" {
    default = "10.1.5.0/24"
}

variable "app_1c_subnet" {
    default = "10.1.6.0/24"
}

# DB Subnets

variable "db_1a_subnet" {
    default = "10.1.7.0/24"
}

variable "db_1b_subnet" {
    default = "10.1.8.0/24"
}

variable "db_1c_subnet" {
    default = "10.1.9.0/24"
}

variable "amis" {
    type = map
    default = {
        us-west-2 = {
            amd64 = {
                centos = {
                    7 = "ami-0a248ce88bcc7bd23",
                    8 = "ami-0157b1e4eefd91fd7"
                }
                ubuntu = {
                    1804 = "ami-0ac73f33a1888c64a",
                    2004 = "ami-07dd19a7900a1f049"
                }
            }
        }
    }
}