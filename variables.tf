variable "LINODE_TOKEN" {
    description = "The Linode access token for the corresponding linode account to provision on."
}

variable "LINODE_NAME"  {
    description = "The name for the drone.io instance."
    default     = "drone-io"
}
variable "LINODE_KERNEL" {
    description = "The kernel to start the linode with. If you can specify 'Latest 64-bit' or 'Latest 32-bit' for the most recent version of either that linode provices."
    default     = "Latest 64 bit"
}
variable "LINODE_REGION" {
    description = "The region to deploy the infrastructure."
    default     = "US East"
}
variable "LINODE_IMAGE" {
    description = "The image to deploy to the Linode."
    default     = "Ubuntu 14.04 LTS"
}
variable "LINODE_SIZE" {
    description = "The size (plan) for the Linode."
    default     = 1024
}
variable "LINODE_GROUP" {
    description = "The group who owns the deployed infrastructure."
    default     = "devops"
}
variable "LINODE_ROOT_PASSWORD" {
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
