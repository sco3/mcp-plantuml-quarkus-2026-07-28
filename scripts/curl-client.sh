#!/usr/bin/env -S bash -x 

curl -s -X POST \
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
  }' "http://localhost:8080/mcp"
