FROM ubuntu:18.04
LABEL maintainer="zaberchann"

RUN apt-get update \
    && apt-get install -y vim wget openssh-server \
    && rm -rf /var/lib/apt/lists/*


RUN mkdir /npc \
    && cd /npc \
    && wget https://github.com/ehang-io/nps/releases/download/v0.25.4/linux_amd64_client.tar.gz \
    && tar -zxf linux_amd64_client.tar.gz  \
    && rm -f linux_amd64_client.tar.gz

COPY entrypoint.sh /usr/local/bin/

ENV server
ENV vkey
ENV type=tcp



ENTRYPOINT [ "entrypoint.sh" ]


