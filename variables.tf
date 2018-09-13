variable "LINODE_TOKEN" {
    description = "The Linode access token for the corresponding linode account to provision on."
}

variable "linode_name"  {
    description = "The name for the drone.io instance."
    default     = "drone-io"
}
variable "linode_kernel" {
    description = "The kernel to start the linode with. If you can specify 'Latest 64-bit' or 'Latest 32-bit' for the most recent version of either that linode provices."
    default     = "Latest 64-bit"
}
variable "linode_region" {
    description = "The region to deploy the infrastructure."
    default     = "us-east"
}
variable "linode_image" {
    description = "The image to deploy to the Linode."
    default     = "Ubuntu 16.04 LTS"
}
variable "linode_size" {
    description = "The size (plan) for the Linode."
}
variable "linode_group" {
    description = "The group who owns the deployed infrastructure."
    default     = "devops"
}
variable "linode_root_password" {
    description = "Password for authenticating as root on the Linode."
}

variable "DRONE_GITHUB_CLIENT" {
    description = "The Github client to use with drone."
}
variable "DRONE_GITHUB_SECRET" {
    description = "The Github secret to use with drone."
}
variable "DRONE_SECRET" {
    description = "The secret to use with drone."
}
