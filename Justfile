# Show target list 
default:
    @just --list
    
# Init quarkus project
init:
    quarkus create app sco3:mcp-plantuml-server-2026-07-28 --gradle-kotlin-dsl --extension='io.quarkiverse.mcp:quarkus-mcp-server-http'
    
# Run quarkus in dev mode
dev:
    ./gradlew quarkusDev
run:
    ./gradlew quarkusRun
