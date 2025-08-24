#!/usr/bin/env bash
set -euo pipefail

# Core stack: Ollama + models + base tooling
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ollama
if ! command -v ollama >/dev/null 2>&1; then
  echo "Installing Ollama..."
  curl -fsSL https://ollama.ai/install.sh | sh
fi

echo "Pulling models..."
ollama pull qwen2.5-coder:7b
ollama pull gemma3:4b

# Base deps
brew install node python@3.12 docker || true

# pipx for isolated CLIs
python3 -m pip install --user pipx
python3 -m pipx ensurepath

# Aider (optional but recommended)
pipx install aider-chat || true

echo "Core install complete."


