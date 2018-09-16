data "template_file" "drone_setup" {
    template = "${file("${path.module}/tmpl/bootstrap.sh.tmpl")}"
    vars {
        DRONE_GITHUB_CLIENT = "${var.DRONE_GITHUB_CLIENT}"
        DRONE_GITHUB_SECRET = "${var.DRONE_GITHUB_SECRET}"
        DRONE_SECRET        = "${var.DRONE_SECRET}"
    }
}
