variable "region" {
    default = "us-west-2"
}

variable "profile" {
    default = "default"
}

variable "github_url" {
    default = "https://github.com/exNihlio/flask.git"
}

variable "build_image" {
    default = "aws/codebuild/standard:4.0"
}

variable "image_tag" {
    default = 1
}

variable "image_repo_name" {
    default = "myflask"
}

variable "aws_default_region" {
    default = "us-west-2"
}
