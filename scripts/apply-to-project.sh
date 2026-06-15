#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "사용법: $0 /path/to/project" >&2
  exit 1
fi

TARGET_DIR="$1"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ ! -d "$TARGET_DIR" ]; then
  echo "대상 폴더가 없습니다: $TARGET_DIR" >&2
  exit 1
fi

cp "$SOURCE_DIR/AGENTS.md" "$TARGET_DIR/AGENTS.md"
echo "AGENTS.md를 복사했습니다: $TARGET_DIR/AGENTS.md"
