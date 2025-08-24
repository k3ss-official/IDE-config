# Aider Quick Use

Install (via pipx):
```bash
pipx install aider-chat
```

From your repo root:

```bash
aider --model ollama/qwen2.5-coder:7b
```

Tips

- Stage files daily (`git add -p`) for tighter diffs.
- Use `--read` to load context from key files; `--file` to constrain edits.
- Aider automatically commits with descriptive messages; review with `git log -p`.


