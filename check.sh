#!/bin/bash
for url in "$@"; do
  code=$(curl -s --max-time 5 -o /dev/null -w "%{http_code}" "$url")
  echo "$url -> $code"
done
