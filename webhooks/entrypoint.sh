#!/usr/bin/env sh
set -e
envsubst < /etc/hooks.template.json > /tmp/hooks.json
exec webhook -hooks /tmp/hooks.json -ip 0.0.0.0 -port 80 -verbose
