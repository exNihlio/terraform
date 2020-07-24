variable "read_capacity" {
    default = "20"
}
variable "write_capacity" {
    default = "20"
}
variable "hash_key" {
    default = "name"
}
variable "range_key" {
    default = "age"
}
# HCL array of dicts
variable "attributes" {
    #type = list(object({
    #            name = string
    #            type = string
    #            }))
    default = [ {name = "name",
                 type = "String"},
                 {name = "age",
                  type = "Integer"} ]
}
