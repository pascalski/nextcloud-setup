resource "hcloud_ssh_key" "terraform-ssh-key" {
  name       = "Terraform Key"
  public_key = file("~/.ssh/id_rsa.pub")
}

module "network" {
  source = "./modules/network"
  network_zone = "eu-central"
  nextcloud-network-ip-range = "10.0.0.0/16"
  nextcloud-subnet-ip-range = "10.0.1.0/24"
  database-subnet-ip-range = "10.0.2.0/24"
  storage-subnet-ip-range = "10.0.3.0/24"
}

module "nextcloud-server" {
  count = 1
  source = "./modules/server"
  server_name = "nextcloud-server-${count.index}"
  server_location = "nbg1"
  server_type = "cx11"
  server_network = module.network.nextcloud-network-id
  server_private_ip = cidrhost(module.network.nextcloud-subnet-ip-range, count.index+1)
  server_ssh_keys = [ hcloud_ssh_key.terraform-ssh-key.id ]
}

module "database-server" {
  count = 1
  source = "./modules/server"
  server_name = "database-server-${count.index}"
  server_location = "nbg1"
  server_type = "cx11"
  server_network = module.network.nextcloud-network-id
  server_private_ip = cidrhost(module.network.database-subnet-ip-range, count.index+1)
  server_ssh_keys = [ hcloud_ssh_key.terraform-ssh-key.id ]
}

module "storage-server" {
  count = 1  
  source = "./modules/server"
  server_name = "storage-server${count.index}"
  server_location = "nbg1"
  server_type = "cx11"
  server_network = module.network.nextcloud-network-id
  server_private_ip = cidrhost(module.network.storage-subnet-ip-range, count.index+1)
  server_ssh_keys = [ hcloud_ssh_key.terraform-ssh-key.id ]
}