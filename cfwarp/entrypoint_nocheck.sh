#!/bin/bash
set -m
cd /
warp-svc | grep -v DEBUG &
sleep 2
warp-cli --accept-tos register
warp-cli --accept-tos set-proxy-port 40001
warp-cli --accept-tos set-mode proxy
warp-cli --accept-tos connect
socat tcp-listen:1080,reuseaddr,fork tcp:localhost:40001 &
fg %1
