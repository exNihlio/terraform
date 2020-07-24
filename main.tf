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

module "dynamdb_table_one" {
    source = "./modules/dynamodb"
    variable "dynamodb_table_name" {
        default = "people"
    }
    rcu = var.rcu
    wcu = var.wcu
    range_key = var.range_key
    hash_Key = var.hash_key
    dynamodb_attributes = var.dynamodb_attributes
}
