# docker-vault-ssh-ca-client Docker Container

This project is used to build a Docker container that includes
[HashiCorp Vault](https://www.vaultproject.io/) installed as well as sshd. It
is used to connect to a Vault server instance as a client to test SSH with
Vault configured as an SSH certificate authority.

For information on how to use this container please review the following blog:
https://medium.com/rigged-ops/TBD.

## Installation
  $ docker pull errygg/docker-vault-ssh-ca-client:latest

## NOTE
This container is used in conjunction with a HashiCorp Vault container and
[Docker networking](https://docs.docker.com/engine/reference/commandline/network_create/).
It is assumed you have already instantiated the network as
well as the Vault container. [config.hcl](./files/config.hcl) assumes you will NOT be changing the
default Docker network settings and therefore uses 172.18.0.2 as the Vault
server IP.
