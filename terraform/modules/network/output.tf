output "nextcloud-network-id" {
    value = hcloud_network.nextcloud-network.id
}

output "nextcloud-subnet-id" {
    value = hcloud_network_subnet.nextcloud-subnet.id
}

output "nextcloud-subnet-ip-range" {
    value = hcloud_network_subnet.nextcloud-subnet.ip_range
}

output "database-subnet-id" {
    value = hcloud_network_subnet.database-subnet.id
}

output "database-subnet-ip-range" {
    value = hcloud_network_subnet.database-subnet.ip_range
}

output "storage-subnet-id" {
    value = hcloud_network_subnet.storage-subnet.id
}

output "storage-subnet-ip-range" {
    value = hcloud_network_subnet.storage-subnet.ip_range
}
