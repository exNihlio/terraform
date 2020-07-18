variable "vpc-cidr" {
    default = "10.0.0.0/16"
}

variable "sgw-sub-a-cidr" {
    default = "10.0.0.0/28"
}

variable "lxd-sub-a-cidr" {
    default = "10.0.1.0/28"
}

variable "lxd-sub-b-cidr" {
    default = "10.0.2.0/28"
}

variable "lxd-sub-c-cidr" {
    default = "10.0.3.0/28"
}

variable "amis" {
    # us-west-2 amd64 ubuntu 20.04
    default = "ami-0bf357e4bc8a8b9e3"
    us-west-2-amd64-2004 = "ami-0bf357e4bc8a8b9e3"
    us-west-2-arm64-2004 = "ami-0c336ce0fc42f4e97"
}
