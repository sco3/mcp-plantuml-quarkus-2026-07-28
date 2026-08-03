#!/usr/bin/env -S bash -x


curl -v -X POST http://localhost:8080/mcp \
  -H "Content-Type: application/json" \
  -H "MCP-Protocol-Version: 2026-07-28" \
  -H "Mcp-Method: server/discover" \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "server/discover",
    "params": {
      "clientInfo": {
        "name": "mcp-cli",
        "version": "1.0.0"
      }
    }
  }'