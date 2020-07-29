provider "aws" {
    region = "us-west-2"
}

#terraform {
#  backend "s3" {
#    bucket = "angreal-tfstate-module"
#    key    = "tfstate"
#    region = "us-west-2"
#  }
#}

# This is a specific invocation of the module.
# Treat a module as a function and the invocation of the module below
# as a function call
# With the exception of the 'source' name, all of the keys below are
# variables. These are fed into the module
# variables.tf -> main.tf -> module/dynamodb/variables.tf -> module/dynamodb/main.tf
module "dynamdb_table_one" {
    source = "./modules/dynamodb"
    table_name = "people"
    read_capacity = var.read_capacity
    write_capacity = var.write_capacity
    range_key = var.range_key
    hash_key = var.hash_key
    attributes = var.attributes
    # Read in data here
    table_item = jsondecod(file("data/data.json"))
}
