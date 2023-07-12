resource "hcloud_server" "nextcloud-server" {
  name        = var.server_name
  server_type = var.server_type
  image       = "debian-11"
  location    = var.server_location

  network {
    network_id = var.server_network
  }
}