# resource "aws_lb_target_group_attachment" "privatelink_http_tg_attach_1" {
#     target_group_arn = aws_lb_target_group.privatelink_http_tg.arn
#     target_id = aws_instance.nlb-server-1.id
#     port = 80
# }

# resource "aws_lb_target_group_attachment" "privatelink_http_tg_attach_2" {
#     target_group_arn = aws_lb_target_group.privatelink_http_tg.arn
#     target_id = aws_instance.nlb-server-2.id
#     port = 80
# }

resource "aws_lb_target_group_attachment" "privatelink_https_tg_attach_1" {
    target_group_arn = aws_lb_target_group.privatelink_https_tg.arn
    target_id = aws_instance.nlb-server-1.id
    port = 443
}

resource "aws_lb_target_group_attachment" "privatelink_https_tg_attach_2" {
    target_group_arn = aws_lb_target_group.privatelink_https_tg.arn
    target_id = aws_instance.nlb-server-2.id
    port = 443
}