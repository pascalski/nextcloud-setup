resource "hcloud_network" "nextcloud-network" {
  name     = "network"
  ip_range = var.nextcloud-network-ip-range
}

resource "hcloud_network_subnet" "nextcloud-subnet" {
  type         = "cloud"
  network_id   = hcloud_network.nextcloud-network.id
  network_zone = var.network_zone
  ip_range     = var.nextcloud-subnet-ip-range
}

resource "hcloud_network_subnet" "database-subnet" {
  type         = "cloud"
  network_id   = hcloud_network.nextcloud-network.id
  network_zone = var.network_zone
  ip_range     = var.database-subnet-ip-range
}

resource "hcloud_network_subnet" "storage-subnet" {
  type         = "cloud"
  network_id   = hcloud_network.nextcloud-network.id
  network_zone = var.network_zone
  ip_range     = var.storage-subnet-ip-range
}