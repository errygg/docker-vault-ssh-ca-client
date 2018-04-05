FROM rastasheep/ubuntu-sshd
MAINTAINER Erik R. Rygg <errygg@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update &&\
  apt-get install -y unzip &&\
  mkdir -p /etc/vault &&\
  mkdir -p /usr/local/bin

WORKDIR /usr/local/bin

RUN wget https://releases.hashicorp.com/vault/0.9.6/vault_0.9.6_linux_amd64.zip \
  -O tmp.zip && unzip tmp.zip && rm tmp.zip

COPY files/config.hcl /etc/vault/

RUN useradd -ms /bin/bash ubuntu

RUN usermod -aG sudo ubuntu

CMD ["/usr/sbin/sshd", "-D"]
