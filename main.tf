provider "aws" {

}

terraform {
  backend "s3" {
    bucket = "angreal-tfstate-module"
    key    = "tfstate"
    region = "us-west-2"
  }
}
