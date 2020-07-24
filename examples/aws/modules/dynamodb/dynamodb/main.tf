resource "aws_dynamodb_table" "dynamodb-table" {
    name           = var.name
    billing_mode   = "PROVISIONED"
    read_capacity  = var.read_capacity
    write_capacity = var.write_capacity
    hash_key       = var.hash_key
    range_key      = var.range_key
    # Iterate through DynamoDB attributes variable
    dynamic "attribute" {
        # for_each access each element in the var.attributes variable, and assigns to a new variable.
        # This is very convoluted
        for_each = [ for a in var.attributes: {
            name = a.name
            type = a.type

        }]
        # 'attribute' refers the dynamic "attribute" above.
        # In this case, 'attribute' is the name of each aws_dynamodb_table 'attribute'
        # block.
        content {
            name = attribute.value.name
            type = attribute.value.type
        }
    }
}
