variable "read_capacity" {
    default = "20"
}
variable "write_capacity" {
    default = "20"
}
variable "hash_key" {
    default = "last_name"
}
variable "range_key" {
    default = "index"
}
# HCL array of dicts
variable "attributes" {
    # The 'type' must be either [ 'B', 'S', 'N' ]. This is ALL that will be accepted
    default = [ {name = "last_name",
                 type = "S"},
                {name = "index",
                 type = "N"} ]
}
