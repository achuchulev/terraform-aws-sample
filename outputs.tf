#--------------------root/outputs.tf-----------------------

# ------------------- storage outputs-------------------

output "Bucket Name" {
  value = "${module.storage.bucketname}"
}

# ------------------- networking outputs-------------------

output "Public Subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "Public IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public Security Groups" {
  value = "${module.networking.public_sg)}"
}

# ------------------- compute outputs-------------------

output "Public Instance IDs" {
  value = "${module.compute.server_id}"
}

output "Public Instance IPs" {
  value = "${module.compute.server_ip}"
}
