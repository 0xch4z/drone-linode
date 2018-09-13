FROM hashicorp/terraform:light
LABEL MAINTINER="charlesc.kenney@gmail.com"

ARG LINODE_PROVIDER_VERSION=v0.1.0

RUN wget https://github.com/btobolaski/terraform-provider-linode/releases/download/${LINODE_PROVIDER_VERSION}/terraform-provider-linode-${LINODE_PROVIDER_VERSION}-linux-amd64.tar.gz \
    && tar -xzf terraform-provider-linode-${LINODE_PROVIDER_VERSION}-linux-amd64.tar.gz -C /usr/bin \
    && rm -rf /tmp/* \
    && echo 'providers { linode = "/usr/bin/terraform-provider-linode" }' >> ~/.terraformrc

RUN cat ~/.terraformrc

CMD []
