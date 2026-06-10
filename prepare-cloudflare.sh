#!/usr/bin/env bash
set -euo pipefail

rm -rf dist
mkdir -p dist

rsync -a \
  --exclude='.git/' \
  --exclude='.github/' \
  --exclude='node_modules/' \
  --exclude='dist/' \
  --exclude='wrangler.jsonc' \
  --exclude='prepare-cloudflare.sh' \
  ./ dist/
