provider "aws" {
    region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "angreal-tfstate-module"
    key    = "tfstate"
    region = "us-west-2"
  }
}
