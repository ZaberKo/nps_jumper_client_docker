FROM ubuntu:20.04
LABEL maintainer="zaberchann"
ARG npc_version=v0.26.10

WORKDIR /
RUN apt-get update \
    && apt-get install -y neovim wget openssh-server \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir /npc \
    && cd /npc \
    && wget https://github.com/ehang-io/nps/releases/download/${npc_version}/linux_amd64_client.tar.gz \
    && tar -zxf linux_amd64_client.tar.gz  \
    && rm -f linux_amd64_client.tar.gz

# COPY entrypoint.sh /usr/local/bin

ENV server='' vkey='' type='tcp'



ENTRYPOINT [ "entrypoint.sh" ]



