<h1 align="center"><a href="">Drone.io</a> IaC</h1>
<h3 align="center">Deploy a drone.io instance on <a href="https://www.linode.com/">Linode</a> with <a href="https://www.terraform.io/">Terraform</a></h3>

## Prerequisites
1. [Create a Github Application](https://developer.github.com/apps/building-github-apps/creating-a-github-app/)
2. [Create a Linode API token](https://www.linode.com/docs/platform/api/getting-started-with-the-linode-api/#get-an-access-token)
3. Install the [Terraform Linode Provider](https://github.com/btobolaski/terraform-provider-linode#installation) plugin
6. [Generate random secret](https://www.dashlane.com/features/password-generator) for drone.

## Deployment
1. Clone and `cd` into this repository:
```
git clone https://github.com/charliekenney23/drone-linode \
  && cd drone-linode
```
2. Verify your configuration (this will **not** provision any resources):
```shell
terraform plan \
  -var "LINODE_TOKEN=<your linode token>" \
  -var "LINODE_ROOT_PASSWORD=<your root password>" \
  -var "LINODE_SIZE=<your linode size>" \
  -var "DRONE_SECRET=<your secret>" \
  -var "DRONE_GITHUB_CLIENT=<your github app id>" \
  -var "DRONE_GITHUB_SECRET=<your github app secret>"
```
3. Deploy your your new instance:
```shell
terraform apply \
  -var "LINODE_TOKEN=<your linode token>" \
  -var "LINODE_ROOT_PASSWORD=<your root password>" \
  -var "LINODE_SIZE=<your linode size>" \
  -var "DRONE_SECRET=<your secret>" \
  -var "DRONE_GITHUB_CLIENT=<your github app id>" \
  -var "DRONE_GITHUB_SECRET=<your github app secret>"
```
4. Continue to [Drone.io](http://docs.drone.io/installation/) specific documentaion.

## Resoucres
[Drone.io Documentation](http://docs.drone.io/installation/)
[Linode Types](https://api.linode.com/v4/linode/types)
[Linode Regions](https://api.linode.com/v4/regions)
