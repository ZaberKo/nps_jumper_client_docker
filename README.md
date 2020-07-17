# nps_jumper_client_docker

ubuntu18.04 + nps client 0.26.8 + sshd

See [dockerhub](https://hub.docker.com/r/zaberchann/nps_jumper_client)

## Usage
After running the container, open a new shell to add users and modify sshd config `/etc/ssh/sshd_config`
```
docker exec -it <container> /bin/bash
``` 

## Build
Change the `npc_version` value in `Dockerfile` to use other version of npc

Build it from local:
```
docker build .
```