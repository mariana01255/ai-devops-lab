#!/usr/bin/env bash
LOG="${1:-sample.log}"

{
  echo "=== 1. error count (grep -ci) ==="
  grep -ci error "$LOG"
  echo

  echo "=== 2. top 10 IPs ==="
  awk '{print $1}' "$LOG" | sort | uniq -c | sort -nr | head -n 10
  echo

  echo "=== 3. one field with cut ==="
  cut -d' ' -f3 "$LOG"
} > ok.log 2> err.log
