output "nextcloud-server" {
    value = module.nextcloud-server.*.server_ip
}

output "database-server" {
    value = module.database-server.*.server_ip
}

output "storage-server" {
    value = module.storage-server.*.server_ip
}
