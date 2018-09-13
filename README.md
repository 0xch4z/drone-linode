<h1 align="center"><a href="">Drone.io</a> IaC</h1>
<h3 align="center">Deploy a drone.io instance on <a href="https://www.linode.com/">Linode</a> with <a href="https://www.terraform.io/">Terraform</a></h3>

## Prerequisites
1. [Create a Github API token]()
2. [Create a Linode API token]()
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
docker run -i -t hashicorp/terraform:light terraform plan \
  -var "LINODE_TOKEN=<enter-your-linode-token-here>" \
  -var "DRONE_GITHUB_TOKEN=<enter-your-gh-client-id-here>" \
  -var "DRONE_GITHUB_SECRET=<enter-your-gh-secret-here>"
```
3. Deploy your your new instance:
```shell
docker run -i -t hashicorp/terraform:light terraform apply \
  -var "LINODE_TOKEN=<enter-your-linode-token-here>" \
  -var "DRONE_GITHUB_TOKEN=<enter-your-gh-client-id-here>" \
  -var "DRONE_GITHUB_SECRET=<enter-your-gh-secret-here>"
```
4. Continue to [Drone.io](http://docs.drone.io/installation/) specific documentaion.

## Resoucres
[Drone.io Documentation](http://docs.drone.io/installation/)
[Linode Types](https://api.linode.com/v4/linode/types)
[Linode Regions](https://api.linode.com/v4/regions)
