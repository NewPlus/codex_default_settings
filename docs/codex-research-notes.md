# Codex 조사 결과와 반영 판단

이 문서는 Codex 설정에 도움이 되는 공개 자료를 조사한 뒤, 이 저장소에 실제로 반영한 내용과 제외한 내용을 기록한다.

## 조사한 공식 자료

- OpenAI Codex Best Practices: `https://developers.openai.com/codex/learn/best-practices`
- OpenAI Codex Customization: `https://developers.openai.com/codex/concepts/customization`
- OpenAI Codex AGENTS.md: `https://developers.openai.com/codex/guides/agents-md`
- OpenAI Codex Skills: `https://developers.openai.com/codex/skills`
- OpenAI Codex GitHub Review: `https://developers.openai.com/codex/integrations/github`
- OpenAI Codex GitHub Action: `https://developers.openai.com/codex/github-action`

## 반영한 항목

### 프로젝트 지침은 `AGENTS.md`에 둔다

Codex 공식 문서는 저장소 관례와 검증 절차를 `AGENTS.md`에 두는 방식을 안내한다. 이 저장소는 이미 `AGENTS.md`를 중심으로 개발 루프와 버전 정책을 관리하고 있으므로 유지한다.

### 반복 가능한 업무는 skill로 만든다

Codex 공식 문서는 재사용 가능한 업무 흐름을 skill로 패키징하는 방식을 권장한다. 이에 따라 Fable Mode는 `.agents/skills/fable-mode`로 유지하고, 문서 갱신 흐름은 `.agents/skills/docs-maintainer`로 추가했다.

### 변경 후 검증을 CI에 넣는다

Codex를 잘 쓰려면 에이전트가 만든 결과를 테스트와 검증으로 닫아야 한다. 이 저장소는 `.github/workflows/ci.yml`에서 필수 파일, 스크립트 문법, 버전 형식, README 뱃지, docs 상태를 검증한다.

### PR 리뷰는 회귀와 테스트 누락을 보는 절차로 둔다

Codex GitHub review 문서는 PR에서 회귀, 테스트 누락, 문서 문제를 찾는 용도로 사용할 수 있다고 설명한다. `AGENTS.md`의 기본 개발 루프에는 CI 이후 에이전트 코드 리뷰를 수행하고, 문제가 있으면 수정 단계로 돌아가도록 이미 반영되어 있다.

### docs 유지관리를 기능으로 만든다

새로운 기능이나 설정이 생길 때 README만 바꾸면 세부 맥락이 빠지기 쉽다. 그래서 `docs/`를 별도 지식 공간으로 두고, `docs-maintainer` skill과 `scripts/validate-docs.sh`를 통해 변경마다 갱신하도록 했다.

## 제외한 항목

### Codex GitHub Action으로 자동 수정까지 수행하는 흐름

OpenAI 문서에는 `openai/codex-action`을 GitHub Actions에서 사용하는 방법이 있다. 그러나 이 저장소는 설정 템플릿과 문서 중심 저장소이고, 자동 수정 액션을 넣으려면 API 키와 권한 정책을 추가로 설계해야 한다. 현재는 보안과 단순성을 위해 일반 CI 검증만 유지한다.

### Hooks 또는 Rules 기반 강제 정책

Hooks와 Rules는 강력하지만, 이 저장소의 현재 목적에는 `AGENTS.md`, skill, CI 검증만으로 충분하다. 로컬 환경마다 동작 차이가 생길 수 있어 지금은 도입하지 않는다.

### Subagents

Subagents는 복잡한 병렬 분석에 유용하지만, 이 저장소의 기본 설정 관리에는 과하다. 필요해질 때 별도 skill이나 문서로 도입한다.
