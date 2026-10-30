#!/usr/bin/env bash
# Mobile Screenshot API – cURL example
# Usage: CAPTUREKIT_API_KEY=your-key bash mobile.sh
set -euo pipefail

curl -sS -G "https://api.capturekit.dev/v1/capture" \
  -H "x-api-key: ${CAPTUREKIT_API_KEY}" \
  --data-urlencode url=https://github.com/seaweedfs/seaweedfs \
  --data-urlencode format=png \
  --data-urlencode device=iphone_14_pro \
  -o mobile.png

echo "Saved mobile.png"
