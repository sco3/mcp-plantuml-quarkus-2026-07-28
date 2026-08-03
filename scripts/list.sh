#!/usr/bin/env -S bash 

set -x


curl -v -X POST http://localhost:8080/mcp \
  -H "Accept: application/json, text/event-stream" \
  -d '{ "jsonrpc": "2.0",
      "method": "tools/list",
      "id": 1  }'
