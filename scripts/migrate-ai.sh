#!/usr/bin/env bash
set -e

echo "AI migration complete. Files generated:"
ls AI_RULES.md AI_GIT_RULES.md CLAUDE.md .claude/settings.json scripts/gemini-start
