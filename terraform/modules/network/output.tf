output "nextcloud-network-id" {
    value = hcloud_network.nextcloud-network.id
}

output "nextcloud-subnet-id" {
    value = hcloud_network_subnet.nextcloud-subnet.id
}

output "database-subnet-id" {
    value = hcloud_network_subnet.database-subnet.id
}

output "storage-subnet-id" {
    value = hcloud_network_subnet.storage-subnet.id
}
