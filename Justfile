url := "http://localhost:8080/mcp"

# Show target list 
default:
    @just --list
    
# Init quarkus project
init:
    quarkus create app sco3:mcp-plantuml-server-2026-07-28 --gradle-kotlin-dsl --extension='io.quarkiverse.mcp:quarkus-mcp-server-http'
    
# Run quarkus appin dev mode
dev:
    ./gradlew quarkusDev

# Run quarkus app 
run:
    ./gradlew quarkusRun

# Run curl client to render diagram
curl-diagram:
    curl -v -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json, text/event-stream" \
    -d '{ \
    "jsonrpc": "2.0", \
    "id": 2, \
    "method": "tools/call", \
    "params": { \
      "name": "renderDiagram", \
      "arguments": { \
        "source": "@startuml\nUser -> AI: Native Quarkus Works\n@enduml" \
      } \
    } \
    }' {{url}}

# List tools with curl client 
curl-tools:
    curl -s -X POST \
    -H "Content-Type: application/json" \
    -H "Accept: application/json, text/event-stream" \
    -d '{ \
      "jsonrpc": "2.0", \
      "id": 2, \
      "method": "tools/list" \
    }' \
    {{url}} | yq -P 

