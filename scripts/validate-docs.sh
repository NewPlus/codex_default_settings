#!/usr/bin/env bash
set -euo pipefail

required_docs=(
  "docs/README.md"
  "docs/repository-overview.md"
  "docs/codex-research-notes.md"
  "docs/documentation-workflow.md"
)

for doc in "${required_docs[@]}"; do
  if [ ! -s "$doc" ]; then
    echo "필수 문서가 없거나 비어 있습니다: $doc" >&2
    exit 1
  fi
done

required_mentions=(
  "AGENTS.md"
  ".codex/config.toml"
  ".github/workflows/ci.yml"
  ".agents/skills/fable-mode"
  ".agents/skills/docs-maintainer"
  "prompts/fable-mode.md"
  "scripts/apply-to-project.sh"
  "scripts/install-local-prompts.sh"
  "scripts/validate-docs.sh"
  "VERSION"
)

for item in "${required_mentions[@]}"; do
  if ! grep -Rqs -- "$item" docs README.md AGENTS.md; then
    echo "문서에서 필수 항목 설명을 찾을 수 없습니다: $item" >&2
    exit 1
  fi
done

version="$(tr -d '[:space:]' < VERSION)"
if ! echo "$version" | grep -Eq '^[0-9]+\.[0-9]+\.[0-9]+$'; then
  echo "VERSION은 *.*.* 형식이어야 합니다: $version" >&2
  exit 1
fi

if ! grep -q "version-${version}-" README.md; then
  echo "README 버전 뱃지가 VERSION과 일치하지 않습니다: $version" >&2
  exit 1
fi
