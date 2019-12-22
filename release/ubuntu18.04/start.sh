#!/bin/bash

docker run -d -t -p 1080:80 \
    -e TZ='America/Los_Angeles' \
    -v /var/cache/zoneminder:/var/cache/zoneminder \
    -v ~/docker-vol/zoneminder/mysql:/var/lib/mysql \
    -v ~/docker-vol/zoneminder/logs:/var/log/zm \
    --shm-size="512m" \
    --name zoneminder \
    zoneminderhq/zoneminder:latest-ubuntu18.04
