#!/usr/bin/env bash
cd "$(dirname "$0")"
node app/server.mjs --no-open "$@"
