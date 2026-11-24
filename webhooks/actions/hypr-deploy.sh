#!/usr/bin/env sh
set -xeuo pipefail
echo "--- $(date "+%Y-%m-%d %H:%M:%S") ---"
cd /srv/hypr

git fetch --prune origin
git reset --hard origin/main
git clean -fd

mkdir -p ./site/static
git rev-parse --short HEAD | tr -d '\n' > ./site/static/rev.txt

docker compose down
docker compose up -d --build
docker image prune -f
