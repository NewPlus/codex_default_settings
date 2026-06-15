# 저장소 구성 설명

이 문서는 현재 `codex_default_settings` 저장소에 어떤 파일과 폴더가 있는지 설명한다.

## 루트 파일

- `AGENTS.md`: Codex가 프로젝트 시작 시 읽는 기본 지침이다. 개발 루프, 브랜치 정책, 버전 정책, DDD 기본값, 테스트와 검증, GitHub Actions와 PR, 한국어 커뮤니케이션 규칙을 담고 있다.
- `README.md`: 저장소의 목적, 사용법, 뱃지, 포함 파일, Fable Mode 사용법을 요약한다.
- `VERSION`: 저장소의 현재 버전을 `*.*.*` 형식으로 기록한다. 현재 버전은 `0.2.1`이다.

## Codex 설정

- `.codex/config.toml`: 이 저장소에서 사용하는 Codex 프로젝트 설정이다. 현재는 프로젝트 지침 최대 크기를 넉넉하게 잡기 위해 `project_doc_max_bytes`를 설정한다.

## GitHub Actions

- `.github/workflows/ci.yml`: push와 pull request마다 실행되는 CI 워크플로다. 필수 파일 존재 여부, 셸 스크립트 문법, 버전 형식, README 뱃지, docs 문서 상태를 검증한다. 저장소 체크아웃은 Node.js 24 런타임을 사용하는 `actions/checkout@v5`를 사용한다.

## Codex Skills

- `.agents/skills/fable-mode`: Fable 스타일 응답 모드를 적용하는 Codex skill이다. 첨부된 `CLAUDE-FABLE-5.md` 원문은 참조 파일로 보관하지만, Codex의 정체성이나 상위 안전 지침을 덮어쓰지 않도록 래핑한다.
- `.agents/skills/docs-maintainer`: 저장소 변경 시 `docs/` 문서를 함께 갱신하도록 돕는 Codex skill이다.

## 프롬프트

- `prompts/fable-mode.md`: 로컬 Codex custom prompt로 설치할 수 있는 Fable Mode 프롬프트 템플릿이다.
- 로컬 설치 위치는 `/Users/yonghwanlee/.codex/prompts/fable-mode.md`이며, 설치 후 `/prompts:fable-mode`로 호출한다.

## 스크립트

- `scripts/apply-to-project.sh`: 이 저장소의 `AGENTS.md`, `docs-maintainer` skill, 기본 `docs/README.md` 템플릿을 다른 프로젝트 루트로 적용한다.
- `scripts/install-local-prompts.sh`: `prompts/fable-mode.md`를 로컬 Codex prompts 폴더에 설치한다.
- `scripts/validate-docs.sh`: docs 필수 문서, 주요 파일 설명, VERSION과 README 버전 뱃지 일치를 검증한다.

## 문서

- `docs/README.md`: 문서 인덱스와 유지관리 규칙을 설명한다.
- `docs/repository-overview.md`: 현재 저장소 구조를 설명한다.
- `docs/codex-research-notes.md`: Codex 공식 문서 조사 결과와 반영 판단을 기록한다.
- `docs/documentation-workflow.md`: 변경 사항마다 docs를 갱신하는 절차를 설명한다.
