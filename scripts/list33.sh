curl http://localhost:8080/mcp       \
     -H "Accept: application/json, text/event-stream" \
     -d '{"jsonrpc": "2.0", "id":1, "method": "tools/list"}'
