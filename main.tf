provider "aws" {
    region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "angreal"
    key    = "/tfstate"
    region = "us-west-2"
  }
}
