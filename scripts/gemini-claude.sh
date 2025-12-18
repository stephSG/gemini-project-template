#!/usr/bin/env bash
set -e

GEMINI_BIN="${GEMINI_BIN:-/usr/local/bin/gemini}"
SYSTEM_FILE="${SYSTEM_FILE:-GEMINI_SYSTEM.md}"

if [[ ! -f "$SYSTEM_FILE" ]]; then
  echo "Missing $SYSTEM_FILE"
  exit 1
fi

FIFO="$(mktemp -u)"
mkfifo "$FIFO"

$GEMINI_BIN < "$FIFO" &
PID=$!

{
  cat "$SYSTEM_FILE"
  echo
} > "$FIFO"

rm "$FIFO"
wait $PID
