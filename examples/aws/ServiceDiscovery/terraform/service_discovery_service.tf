# resource "aws_service_discovery_service" "seeds" {
#     name = "seeds"
#     dns_config {
#       namespace_id = aws_service_discovery_private_dns_namespace.demo.id
#       dns_records {
#         ttl = 30
#         type = "A"
#       }
#     }
# }
resource "aws_service_discovery_service" "kibana" {
  name = "dashboard"
  dns_config {
    namespace_id = aws_service_discovery_private_dns_namespace.web.id
    dns_records {
      ttl = 30
      type = "A"
    }
  }
}
resource "aws_service_discovery_service" "es_us_west_2a" {
    name = "es_usw2a"
    dns_config {
        namespace_id = aws_service_discovery_private_dns_namespace.demo.id
        dns_records {
          ttl = 30
          type = "A"
        }
    }
}
resource "aws_service_discovery_service" "es_us_west_2b" {
    name = "es_usw2b"
    dns_config {
        namespace_id = aws_service_discovery_private_dns_namespace.demo.id
        dns_records {
          ttl = 30
          type = "A"
        }
    }
}
resource "aws_service_discovery_service" "es_us_west_2c" {
    name = "es_usw2c"
    dns_config {
        namespace_id = aws_service_discovery_private_dns_namespace.demo.id
        dns_records {
          ttl = 30
          type = "A"
        }
    }
}