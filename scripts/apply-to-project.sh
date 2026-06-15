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

mkdir -p "$TARGET_DIR/.agents/skills/docs-maintainer"
cp "$SOURCE_DIR/.agents/skills/docs-maintainer/SKILL.md" "$TARGET_DIR/.agents/skills/docs-maintainer/SKILL.md"
echo "docs-maintainer skill을 복사했습니다: $TARGET_DIR/.agents/skills/docs-maintainer/SKILL.md"

mkdir -p "$TARGET_DIR/docs"
if [ ! -f "$TARGET_DIR/docs/README.md" ]; then
  cat > "$TARGET_DIR/docs/README.md" <<'DOC'
# 프로젝트 문서

이 폴더는 프로젝트 구조, 주요 기능, 운영 절차, 변경 이력을 한국어로 설명한다.

## 문서 갱신 규칙

- 기능, 스크립트, CI/CD, 설정, 아키텍처, 사용법이 바뀌면 관련 문서를 함께 갱신한다.
- 저장소 구조가 바뀌면 구성 설명 문서를 갱신한다.
- 자동화나 검증 절차가 바뀌면 운영 문서를 갱신한다.
DOC
  echo "docs/README.md 템플릿을 만들었습니다: $TARGET_DIR/docs/README.md"
else
  echo "기존 docs/README.md가 있어 덮어쓰지 않았습니다: $TARGET_DIR/docs/README.md"
fi
