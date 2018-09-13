resource "linode_linode" "ci" {
  image  = "${var.linode_image}"
  kernel = "${var.linode_kernel}"
  group  = "${var.linode_group}"
  name   = "${var.linode_name}"
  region = "${var.linode_region}"
  size   = "${var.linode_size}"

  status = "on"

  ipv6               = true
  private_networking = true

  ssh_key       = "${file("~/.ssh/id_rsa")}"
  root_password = "${var.linode_root_password}"
}
