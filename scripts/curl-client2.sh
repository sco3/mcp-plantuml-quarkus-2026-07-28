#!/usr/bin/env -S bash

set -xueo pipefail

URL="http://localhost:8080/mcp"

RESPONSE=$(curl -s -X POST \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -d '{
    "jsonrpc": "2.0",
    "id": 2,
    "method": "tools/call",
    "params": {
      "name": "renderDiagram",
      "arguments": {
        "source": "@startuml\nUser -> AI: Native Quarkus Works\n@enduml"
      }
    }
  }' "$URL")

echo "$RESPONSE" | jq .

