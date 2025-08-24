# Ultimate IDE + Coding Agent Stack (Local-First)

**Target:** macOS on Apple Silicon (M4, 16 GB); **IDE:** VS Code Insiders + Continue.

### Models (via Ollama)
- Primary: `qwen2.5-coder:7b` (code-specialist, strong autocomplete & edits)
- Fast-path: `gemma3:4b` (quick interactions/notes)

### MCP Servers (tooling)
- `mcp-filesystem`, `mcp-shell`, `mcp-git`, `mcp-docker`, `mcp-database`
- `mcp-filescope` (code only; map/dependency graph)
- Web: `browser-use` (MCP mode), `mcp-tavily` (search), `mcp-web-scraping-ai` (scrape)

### Agents
- **OpenHands** (computer-use dev agent; terminal/editor/browse)
- **Aider** (surgical code edits w/ git hygiene)
- **Continue CLI** (optional; background scans/smart commits)

### MoE Routing (inside Continue)
- Autocomplete/edits/chat: `qwen2.5-coder:7b`
- Fast scratchpad: `gemma3:4b`
- Planning/browse/ops: MCP tools + OpenHands
- Batched refactors/PR-grade edits: Aider

---

## Quick Start

1) **Run core install**
```bash
./scripts/install_core.sh
```

2. **Install MCP servers**

```bash
./scripts/install_mcp.sh
```

3. **Configure Continue**

- Open VS Code Insiders → Continue → *Open Config*.
- Copy `continue/config.example.json` into your Continue config path (usually `~/.continue/config.json`).
- Reload window.

4. **(Optional) Launch OpenHands**

```bash
cd agents/openhands && docker compose up -d
```

5. **Sanity checks**

```bash
./scripts/sanity_test.sh
```

---

## Notes

- Export API keys: `TAVILY_API_KEY`, `WSAI_API_KEY`.
- All components are OSS/swappable. Update model tags in `config.json` at will.
- Designed for 16 GB; avoid 16B+ local models for daily use.

