# AI Project Template (Claude + Gemini)

This repository is a ready-to-use template that allows you to work **interchangeably**
with **Claude Code** and **Gemini CLI** on the same project.

## What this gives you
- One set of rules shared by all AIs
- Claude Code compatibility (CLAUDE.md + .claude/)
- Gemini CLI launcher disciplined like Claude
- Versioned AI rules (audit-friendly)

## How to use

### 1. Unzip & init git
```bash
git init
git add .
git commit -m "chore(init): AI project template"
```

### 2. Use Gemini
```bash
./scripts/gemini-start
```
Type your request, then press **Ctrl+D**.

### 3. Use Claude Code
Open the repository in Claude Code.
Claude will automatically read `CLAUDE.md` and apply the same rules.

### 4. First recommended step
Ask the AI:
> Analyze the repository and summarize architecture and conventions.

Then copy the result into:
```
docs/ai-context.md
```

Commit it.

## Philosophy
- AI does not replace engineers
- AI must be constrained
- Rules > prompts
- Version everything

Enjoy 🚀
