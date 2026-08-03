#!/usr/bin/env bash

set -x

curl -v -i -X POST http://localhost:8080/mcp \
  -H "Content-Type: application/json" \
  -H "Accept: */*" \
  -H "MCP-Protocol-Version: 2026-07-28" \
  -H "Mcp-Method: server/discover" \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "server/discover",
    "params": {},
    "_meta": {
      "io.modelcontextprotocol/protocolVersion": "2026-07-28",
      "io.modelcontextprotocol/clientInfo": {
        "name": "test-stateless-client",
        "version": "2.0.0"
      }
    }
  }'