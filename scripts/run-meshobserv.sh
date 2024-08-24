#!/bin/bash

podman stop meshobserv
podman rm meshobserv

podman run --name meshobserv \
    --restart unless-stopped \
    -v /data:/data \
    -d meshobserv \
    -f /data/meshmap.net/website/nodes.json
