#!/bin/sh
docker-containerd -l /var/run/docker/libcontainerd/docker-containerd.sock --runtime docker-runc --start-timeout 2m
docker daemon --host=unix:///var/run/docker.sock --host=tcp://$HOSTNAME:2375 --storage-driver=vfs
