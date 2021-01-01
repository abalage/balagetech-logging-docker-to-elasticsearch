#!/bin/bash

podname="proxy"
publish_ip="172.18.0.10"
config="/var/containers/configs"

podman pod create --replace --name ${podname} --hostname proxy -p ${publish_ip}:80:80 -p ${publish_ip}:443:443

podman run -d --name proxy --expose 80 --expose 443 --pod ${podname} \
    -v ${config}/nginx/proxy/conf.d/:/etc/nginx/conf.d/ \
    -v ${config}/nginx/proxy/ssl.conf:/etc/nginx/ssl.conf:ro \
    -v ${config}/nginx/ssl:/etc/nginx/ssl:ro \
    --log-driver journald \
    --log-opt tag="nginx|{{.ImageName}}|podman" \
    --log-opt labels=process \
    --label=process=nginx \
    nginx:1.18
