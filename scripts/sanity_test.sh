#!/usr/bin/env bash
set -euo pipefail

# 1) Verify models
ollama list || { echo "Ollama not available"; exit 1; }

# 2) Quick model probe
printf "Testing qwen2.5-coder:7b...\n"
ollama run qwen2.5-coder:7b "Write a one-line bash command to list git branches sorted by commit date." || true

# 3) Check Node + MCP binaries
for bin in mcp-filesystem mcp-shell mcp-git mcp-docker mcp-database mcp-filescope browser-use; do
  command -v "$bin" >/dev/null && echo "OK: $bin" || echo "MISSING: $bin"
done

# 4) Docker sanity
if command -v docker >/dev/null 2>&1; then
  docker info >/dev/null 2>&1 && echo "Docker OK" || echo "Docker installed but not running"
fi

echo "Sanity test complete."


