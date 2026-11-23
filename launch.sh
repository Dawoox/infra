#!/usr/bin/env sh
(cd webhooks && docker compose up -d)
git clone https://github.com/Dawoox/hypr.git
(cd hypr && docker compose up -d)
