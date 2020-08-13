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
