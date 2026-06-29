#!/usr/bin/env bash
# Launch the Total Recall appbook via uv.
set -euo pipefail
cd "$(dirname "$0")"

HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-8000}"
echo "→ Total Recall appbook on http://${HOST}:${PORT}"
exec uv run --project "$(dirname "$0")/.." uvicorn backend.main:app --host "${HOST}" --port "${PORT}" "$@"
