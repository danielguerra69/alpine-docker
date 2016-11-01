![Docker](https://www.docker.com/sites/all/themes/docker/assets/images/brand-full.svg)

# About
Pure alpine linux docker. Docker inside docker.
> [wikipedia.org/wiki/Docker](https://en.wikipedia.org/wiki/Docker_(software))

# Usage

## Commandline

Starts a shell ready to docker
```bash
docker run -ti danielguerra/alpine-docker /bin/sh
```

## Daemon

```bash
docker run --name alpine-docker -p 2375:2375 -d danielguerra/alpine-docker
```

To start a shell in your new container.

```bash
docker exec -ti alpine-docker /bin/sh
```

## Remote docker

Set your client system variables and go
```bash
export DOCKER_API_VERSION=1.23
export DOCKER_HOST='tcp://127.0.0.1:2375'
docker ps
docker-compose up
```

## Inside the container shell

Now you can start containers inside your alpine-docker container.

```bash
docker run -d elasticsearch
docker images
docker ps -a
docker volume ls
```

## Docker-compose

If you need docker-compose inside your alpine-docker container.
```bash
setup-compose
docker-compose up
```
