# 문서 갱신 워크플로

이 저장소는 변경 사항이 생길 때마다 `docs/`를 함께 채우는 것을 기능으로 취급한다.

## 언제 갱신할까

다음 중 하나라도 바뀌면 docs를 갱신한다.

- `AGENTS.md`의 개발 루프, 버전 정책, GitHub 정책, DDD 정책.
- `.github/workflows/ci.yml`의 CI 검증 내용.
- `.agents/skills/*` 아래의 Codex skill.
- `prompts/*` 아래의 custom prompt 템플릿.
- `scripts/*` 아래의 보조 스크립트.
- `VERSION` 또는 README 뱃지.
- 저장소에 새 폴더나 공개 사용법이 추가되는 경우.

## 갱신 절차

1. 변경된 파일을 확인한다.
2. 변경이 사용자에게 어떤 영향을 주는지 한 문장으로 정리한다.
3. 구조 설명이 필요하면 `docs/repository-overview.md`를 수정한다.
4. Codex 사용법이나 조사 근거가 바뀌면 `docs/codex-research-notes.md`를 수정한다.
5. 문서 갱신 규칙 자체가 바뀌면 이 파일을 수정한다.
6. README에는 빠른 사용법만 남기고, 상세 설명은 docs로 연결한다.
7. 이 저장소처럼 docs 검증 스크립트가 있는 프로젝트에서는 `scripts/validate-docs.sh`를 실행한다.
8. CI가 통과하는지 확인한다.

## 자동 검증

`scripts/validate-docs.sh`는 다음을 확인한다.

- 필수 docs 파일이 존재하고 비어 있지 않은지.
- `AGENTS.md`, `.codex/config.toml`, `.github/workflows/ci.yml`, `.agents/skills/fable-mode`, `.agents/skills/docs-maintainer`, `prompts/fable-mode.md`, `scripts/apply-to-project.sh`, `scripts/install-local-prompts.sh`, `scripts/validate-docs.sh`, `VERSION`이 문서나 README 또는 AGENTS에 설명되어 있는지.
- `VERSION`이 `*.*.*` 형식인지.
- README의 version 뱃지가 `VERSION`과 일치하는지.

## Codex에서 쓰는 방법

저장소 변경 작업을 할 때는 `$docs-maintainer` skill을 명시하거나, “docs도 같이 갱신해줘”라고 요청한다. 이 저장소의 `AGENTS.md`에도 변경마다 docs 갱신을 확인하도록 규칙을 둔다.
