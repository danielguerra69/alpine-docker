#!/bin/sh
docker daemon --host=unix:///var/run/docker.sock --host=tcp://$HOSTNAME:2375
