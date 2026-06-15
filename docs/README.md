# 문서 인덱스

이 폴더는 `codex_default_settings` 저장소의 구조와 운영 규칙을 한국어로 설명한다. 저장소에 기능, 스크립트, GitHub Actions, Codex skill, 프롬프트, 버전 정책 변경이 생기면 관련 문서를 함께 갱신한다.

## 문서 목록

- `repository-overview.md`: 현재 저장소에 있는 파일과 폴더의 역할.
- `codex-research-notes.md`: Codex 공식 문서를 조사해 이 저장소에 반영한 항목과 제외한 항목.
- `documentation-workflow.md`: 변경 사항이 생길 때 docs를 갱신하는 절차와 검증 방법.

## 유지관리 규칙

- 기능 변경은 README 요약과 docs 상세 문서를 함께 갱신한다.
- 구조 변경은 `repository-overview.md`에 반영한다.
- Codex 운영 방식 변경은 `codex-research-notes.md` 또는 `documentation-workflow.md`에 반영한다.
- 문서 검증은 `scripts/validate-docs.sh`로 수행한다.
