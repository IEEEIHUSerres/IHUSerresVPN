#!/usr/bin/env bash

docker run \
-it \
--rm \
-v ./config:/root/openvpn:ro \
--device /dev/net/tun \
--cap-add=NET_ADMIN \
--sysctl net.ipv6.conf.all.disable_ipv6=0 \
ieeeihuserres/ihuserresvpn