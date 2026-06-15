---
name: docs-maintainer
description: Use when repository files, workflows, skills, scripts, version policy, or setup behavior change. Update Korean docs under docs/ so the repository map and workflow explanation stay current.
---

# Docs Maintainer

이 스킬은 저장소 구조, 설정, 스크립트, GitHub Actions, Codex skill, 프롬프트, 버전 정책, 적용 절차가 바뀔 때 사용한다.

## 작업 절차

1. 변경된 파일과 사용자에게 노출되는 동작을 확인한다.
2. `docs/repository-overview.md`에 새 파일, 삭제된 파일, 역할 변경을 반영한다.
3. Codex 사용법이나 설정 원칙이 바뀌면 `docs/codex-research-notes.md` 또는 `docs/documentation-workflow.md`를 갱신한다.
4. README의 요약과 docs의 상세 설명이 서로 모순되지 않는지 확인한다.
5. `scripts/validate-docs.sh`를 실행해 문서 필수 항목과 버전 뱃지 일치를 검증한다.

## 문서 작성 규칙

- 모든 문서는 한국어로 쓴다.
- 사용자가 바로 이해할 수 있도록 파일의 목적과 언제 수정해야 하는지를 함께 설명한다.
- 외부 문서를 근거로 정책을 추가한 경우 출처 URL을 문서에 남긴다.
- 임시 조사 메모와 확정 정책을 구분한다.
