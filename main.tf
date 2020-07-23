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
    variable "rcu" {
        default = "20"
    }
    variable "wcu" {
        default = "20"
    }
    variable "hash_key" {
        default = "name"
    }
    variable "range_key" {
        default = "age"
    }
    # HCL array of dicts
    variable "dynamodb_attributes" {
        type = list(object({
            name = string
            type = string
            }))
        default = [ {name = "name",
                     type = "String"},
                    {name = "age",
                     type = "Integer"} ]
    }
}
