resource "linode_linode" "ci" {
  image  = "${var.LINODE_IMAGE}"
  kernel = "${var.LINODE_KERNEL}"
  name   = "${var.LINODE_NAME}"
  group  = "${var.LINODE_GROUP}"
  region = "${var.LINODE_REGION}"
  size   = "${var.LINODE_SIZE}"
  status = "on"

  ipv6               = true
  private_networking = true

  ssh_key       = "${file("~/.ssh/id_rsa")}"
  root_password = "${var.LINODE_ROOT_PASSWORD}"
}
