resource "aws_dynamodb_table" "dynamodb-table" {
    name           = var.dynamodb_table_name
    billing_mode   = "PROVISIONED"
    read_capacity  = var.rcu
    write_capacity = var.wcu
    hash_key       = var.hash_key
    range_key      = var.range_key
    # Iterate through DynamoDB attributes variable
    dynamic "attribute" {
        for_each = [ for a in var.attributes: {
            name = a.name
            type = a.type

        }]
        content {
            name = attribute.value.name
            type = attribute.value.type
        }
    }
}
