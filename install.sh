#!/usr/bin/env bash
# deck-skills one-shot installer (macOS / Linux / Git Bash)
# Copies every skill into ~/.claude/skills and every agent into ~/.claude/agents.
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.claude/skills" "$HOME/.claude/agents"

for d in "$REPO_DIR"/*/; do
  if [ -f "$d/SKILL.md" ]; then
    rm -rf "$HOME/.claude/skills/$(basename "$d")"
    cp -R "$d" "$HOME/.claude/skills/$(basename "$d")"
    echo "skill installed: $(basename "$d")"
  fi
done

for f in "$REPO_DIR"/*/agents/*.md; do
  [ -e "$f" ] || continue
  cp "$f" "$HOME/.claude/agents/"
  echo "agent installed: $(basename "$f")"
done

echo "Done. Start a new Claude Code session to load the skills."
