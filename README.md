# Codex 기본 세팅 프로젝트

[![CI](https://github.com/NewPlus/codex_default_settings/actions/workflows/ci.yml/badge.svg)](https://github.com/NewPlus/codex_default_settings/actions/workflows/ci.yml)
![Version](https://img.shields.io/badge/version-0.1.0-blue)
![Visibility](https://img.shields.io/badge/repo-public-brightgreen)

이 폴더는 새 프로젝트를 시작할 때 적용할 Codex 기본 지침을 보관하는 장소다.

## 적용된 방식

- Codex는 프로젝트 루트의 `AGENTS.md`를 자동으로 읽는다.
- 이 폴더의 `AGENTS.md`에는 브랜치 생성, 개발, 테스트, 버전업, 커밋, 푸시, GitHub Actions, 에이전트 코드 리뷰, PR merge까지의 기본 루프가 정의되어 있다.
- 새 프로젝트에 같은 정책을 적용하려면 이 폴더의 `AGENTS.md`를 새 프로젝트 루트에 복사한다.

## 새 프로젝트에 적용하기

```bash
cp /Users/yonghwanlee/Desktop/dev/codex_default_settings/AGENTS.md /path/to/new-project/AGENTS.md
```

그 다음 Codex를 새 프로젝트 루트에서 시작하면 해당 지침이 적용된다.

## 현재 기본 규칙 요약

- 모든 README, 주석, 답변, 설명은 한국어로 작성한다.
- 개발 브랜치는 기본적으로 `feature/{title_for_development_things}` 형식을 사용한다.
- DDD 아키텍처를 기본값으로 적용한다.
- GitHub 원격 저장소가 없으면 사용자에게 연결 여부를 묻고, 없으면 로컬 커밋까지만 진행한다.
- 버전은 `*.*.*` 형식을 사용한다.
- 릴리즈 요청은 첫 번째 버전, 기능 추가는 두 번째 버전, 수정류는 세 번째 버전을 올린다.
- 릴리즈 시 커밋 기반 릴리즈 노트를 한국어로 작성한다.

## 포함 파일

- `AGENTS.md`: Codex가 실제로 읽는 프로젝트 지침.
- `.codex/config.toml`: 이 기본 세팅 프로젝트에서 사용할 Codex 프로젝트 설정.
- `scripts/apply-to-project.sh`: 다른 프로젝트에 `AGENTS.md`를 복사하는 보조 스크립트.
- `.github/workflows/ci.yml`: 푸시와 PR마다 실행되는 기본 CI 검증.
- `.agents/skills/fable-mode`: Fable 스타일 응답 모드를 적용하는 Codex 스킬.
- `prompts/fable-mode.md`: `/prompts:fable-mode`로 호출할 수 있는 로컬 Codex 프롬프트 템플릿.
- `VERSION`: 현재 설정 프로젝트 버전.

## Fable Mode 사용법

Codex의 문서상 스킬은 `$fable-mode` 또는 `/skills`에서 선택해 사용할 수 있다. 슬래시 명령 형태로 쓰고 싶다면 로컬 Codex 프롬프트 `/prompts:fable-mode`를 사용한다.

`/fable-mode`라는 표현으로 요청해도 이 저장소의 스킬 설명이 해당 요청을 인식하도록 설정되어 있다. 다만 Codex의 공식 custom prompt 호출 형식은 `/prompts:fable-mode`다.

로컬 Codex 프롬프트를 설치하려면 아래 명령을 실행한다.

```bash
./scripts/install-local-prompts.sh
```
