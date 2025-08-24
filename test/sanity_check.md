# Sanity Check Playbook

1. **Continue → Model switch**
   - Select `qwen2.5-coder:7b` and ask: “Scan the workspace; list key modules; suggest minimally invasive refactors.”
2. **FileScope**
   - Tool call: “Generate file importance map + dependency graph; mark hotspots.”
3. **Browser-use**
   - Tool call: “Open docs for <lib>, list breaking changes since vX, summarize and link PRs.”
4. **Aider**
   - Run a one-file refactor; review auto-commit and diff.
5. **OpenHands**
   - `docker compose up -d` in `agents/openhands` and open http://localhost:3000 for a guided multi-step task.


