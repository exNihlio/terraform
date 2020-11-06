resource "aws_route_table_association" "sgw1" {
    subnet_id = aws_subnet.sgw_usw2a_1.id
    route_table_id = aws_route_table.igw.id
}

# Web tier route table associations
resource "aws_route_table_association" "web_1a" {
    subnet_id = aws_subnet.web_usw2a_1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "web_1b" {
    subnet_id = aws_subnet.web_usw2b_1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "web_1c" {
    subnet_id = aws_subnet.web_usw2c_1.id
    route_table_id = aws_route_table.ngw.id
}

## App tier subnet associations
resource "aws_route_table_association" "app_1a" {
    subnet_id = aws_subnet.app_usw2a_1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "app_1b" {
    subnet_id = aws_subnet.app_usw2b_1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "app_1c" {
    subnet_id = aws_subnet.app_usw2c_1.id
    route_table_id = aws_route_table.ngw.id
}

## DB tier subnet associations

resource "aws_route_table_association" "db_1a" {
    subnet_id = aws_subnet.db_usw2a_1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "db_1b" {
    subnet_id = aws_subnet.db_usw2b_1.id
    route_table_id = aws_route_table.ngw.id
}

resource "aws_route_table_association" "db_1c" {
    subnet_id = aws_subnet.db_usw2b_1.id
    route_table_id = aws_route_table.ngw.id
}