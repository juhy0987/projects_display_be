#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$(readlink -f "$0")")"

export PATH="/home/juhy0987/.local/bin:${PATH}"

HOST="${BE_HOST:-0.0.0.0}"
PORT="${BE_PORT:-27477}"

exec uv run uvicorn main:app --host "${HOST}" --port "${PORT}" >> app.log 2>&1
