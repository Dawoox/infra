#!/usr/bin/env bash
cd /srv/hypr

git pull --ff-only

mkdir -p ./site/static
git rev-parse --short HEAD > ./site/static/rev.txt

docker compose up -d --build
docker image prune -f
