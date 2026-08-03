curl -v -X POST http://localhost:8080/mcp \
  -H "Content-Type: application/json" \
  -H "Accept: application/json, text/event-stream" \
  -H "Mcp-Method: tools/call" \
  -H "MCP-Protocol-Version: 2026-07-28" \
  -H "Mcp-Name: list-users" \
  -d '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "tools/call",
    "params": {
      "_meta": {
        "io.modelcontextprotocol/protocolVersion": "2026-07-28",
        "io.modelcontextprotocol/clientInfo": {
          "name": "curl-test",
          "version": "1.0.0"
        },
        "io.modelcontextprotocol/clientCapabilities": {}
      },
      "name": "list-users",
      "arguments": {}
    }
  }'