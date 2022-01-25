output "external_ip_address_db" {
  value = module.db.external_ip_address_db
}

output "external_ip_address_app" {
  value = module.app.external_ip_address_app
}

#output "app_url" {
#  value = [
#    "http://${module.app.external_ip_address_app}:9292"
#  ]
#}
