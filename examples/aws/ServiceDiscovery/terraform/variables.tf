variable "profile" {
    default = "default"
}
variable "region" {
    default = "us-west-2"
}
variable "es_ecr_repo" {
    default = "elasticsearch"
}
variable "es_ecr_tag" {
    default = "7.5.1"
}
variable "kibana_repo" {
    default = "kibana"
}
variable "kibana_tag" {
    default = "7.5.1"
}
variable "flask_app_repo" {
    default = "flaskapp"
}
variable "flask_app_tag" {
    default = "0.1.6"
}