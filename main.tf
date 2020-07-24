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
    name = var.dynamodb_table_name
    read_capacity = var.rcu
    write_capacity = var.wcu
    range_key = var.range_key
    hash_key = var.hash_key
}
