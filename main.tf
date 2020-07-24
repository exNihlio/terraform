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
    name = "people"
    read_capacity = var.read_capcity
    write_capacity = var.write_capacity
    range_key = var.range_key
    hash_key = var.hash_key
    attribtues = var.attributes
}
