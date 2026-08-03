
set -x

curl -v -X POST http://localhost:8080/mcp \
  -H "Content-Type: application/json" \
  -H "Accept: application/json" \
  -H "Mcp-Method: tools/call" \
  -H "Mcp-Name: renderDiagram" \
  -d '{
    "jsonrpc": "2.0",
    "method": "tools/call",
    "params": {
      "name": "renderDiagram",
      "arguments": {
        "source": "@startuml\nBob -> Alice: Hello\n@enduml"
      }
    },
    "id": 10
  }'