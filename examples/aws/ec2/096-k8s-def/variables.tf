variable "region" {
    default = "us-west-2"
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

# variable "us-west-2a-centos7-amd64" {
#     default = 
# }

# variable "us-west-2a-ubuntu1804-amd64" {
#     default = 
# }

# variable "us-west-2a-ubuntu2004-amd64" {
#     default = 
# }