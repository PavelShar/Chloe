## Chloe: NodeJS + OpenSSH Docker image

This is a simple docker image with `nodejs` and `OpenSSH` on board.  
Image is built on top of minimalistic `Ubuntu Alpine`

[![Docker Pulls](https://img.shields.io/docker/pulls/pavelshar/chloe.svg?style=flat-square)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/pavelshar/chloe.svg?style=flat-square)][hub]
[![Docker Automated build](https://img.shields.io/docker/automated/pavelshar/chloe.svg?style=flat-square)][hub]


#### Additional Packages
* `mc`
* `git`

#### SSH Connection Settings
- Default user: `root`
- Default password: `password`

#### Exposed ports
This image exposes `80` and `22` default ports. For some other reasons you can use `8000-8010` ports that are also exposed.

#### Running image
Simple run: `docker run --name chloe -p 8080:80 -p 8022:22 -d pavelshar/chloe:latest`. This command pulls latest image, start container with name `chloe` and map outter 8080 port to 80 inner image's port and 8022 with 22 accordingly

You can redefine ssh password using environment variable `SSH_PASSWORD` when creating container - `docker run --name chloe -p 8080:80 -p 8022:22 -d -e SSH_PASSWORD=mysshpass pavelshar/chloe:latest`

[hub]: https://hub.docker.com/r/pavelshar/chloe/
