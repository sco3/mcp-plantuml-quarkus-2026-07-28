# Stateless MCP Plantuml Server (MCP protovol version 2026-07-28)

This project uses Quarkus, the Supersonic Subatomic Java Framework.

## Running the application in dev mode

You can run your application in dev mode that enables live coding using:

```shell script
./gradlew quarkusDev
```

Server listens on http://localhost:8080/mcp



## MCP Inspector test

The mcp inspector v2 currently is not able to connect to streaming http.
The ticket exists  https://github.com/modelcontextprotocol/inspector/issues/1858

The mcp inspector v1 sample run

![Screenshot](images/screenshot.png)