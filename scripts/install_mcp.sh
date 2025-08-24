#!/usr/bin/env bash
set -euo pipefail

# Load .env if present
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

# Install MCP servers (Node-based)
 npm i -g \
  mcp-filesystem \
  mcp-shell \
  mcp-git \
  mcp-docker \
  mcp-database \
  mcp-tavily \
  mcp-webscrapingai \
  mcp-filescope

# Browser automation (MCP-capable)
 npm i -g browser-use

echo "MCP servers installed. Configure Continue to point at them."


