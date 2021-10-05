variable "profile" {
    default = "default"
}
variable "region" {
    default = "us-west-2"
}
variable "gitlab_repo" {
    default = "gitlab-ce"
}
variable "gitlab_tag" {
    default = "13.10.5-ce.0"
}
variable "lb_cert_arn" {
    default = "arn:aws:acm:us-west-2:502360673667:certificate/90c47a1b-0e91-4bba-9d65-95286a11e720"
}