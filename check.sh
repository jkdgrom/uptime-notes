#!/bin/bash
for url in "$@"; do
  code=$(curl -s -o /dev/null -w "%{http_code}" "$url")
  echo "$url -> $code"
done
