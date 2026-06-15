#!/usr/bin/env bash
set -euo pipefail

SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROMPT_DIR="${CODEX_HOME:-$HOME/.codex}/prompts"

mkdir -p "$PROMPT_DIR"
cp "$SOURCE_DIR/prompts/fable-mode.md" "$PROMPT_DIR/fable-mode.md"

echo "fable-mode 프롬프트를 설치했습니다: $PROMPT_DIR/fable-mode.md"
