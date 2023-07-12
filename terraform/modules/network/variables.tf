variable "network_zone" {
  type = string
  default = "eu-central"
}

variable "nextcloud-network-ip-range" {
  type = string
  default = "10.0.0.0/16"
}

variable "nextcloud-subnet-ip-range" {
  type = string
  default = "10.0.1.0/24"
}

variable "database-subnet-ip-range" {
  type = string
  default = "10.0.2.0/24"
}

variable "storage-subnet-ip-range" {
  type = string
  default = "10.0.3.0/24"
}