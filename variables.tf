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
