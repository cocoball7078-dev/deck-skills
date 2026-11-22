# deck-skills

슬라이드 덱을 컨설팅급으로 뽑기 위한 Claude Code 스킬 모음입니다. MIT 라이선스로 누구나 자유롭게 쓰고 고칠 수 있습니다.

## 들어 있는 것

| 스킬 | 내용 |
|---|---|
| `deck-craft` | **제작 표준.** 다이어그램 중심(방사형·레이더 진단·곡선), 팔레트 라이브러리 8종 + 탐색 도구, 기획자·디자이너·컨설턴트 3역할 검수 팀(`agents/` 포함) |
| `ppt` | 덱 기획·검수의 진입점. 스토리라인·헤드메시지·레이아웃 자동 적용 규칙 |
| `ppt-commands` | PPT 제작 단계별 명령어 20종 |
| `ai-layout-names` | 레이아웃(배치) 이름 9종 + UI 컴포넌트(부품) 이름 — Claude가 자동 적용 |
| `ai-color-combos` | 컬러 꿀조합 3종 (HEX 코드·역할) |
| `design-reference-first` | 디자인 레퍼런스를 먼저 고르고 따라 만드는 작업법 + 갤러리 10곳 |
| `claude-prompt-libraries` | HTML 화면·웹덱용 프롬프트 라이브러리 3곳 |
| `consulting-deck` | 컨설팅 장표 사고 체계 |
| `onepoint-strategy` | 전략 분석 프레임워크 |
| `hrd-ms-patterns` | HRD·변화관리·Microsoft 제안 장표 패턴 |

## 설치 (자동, 1회)

### 방법 1 — 설치 스크립트

```bash
git clone https://github.com/cocoball7078-dev/deck-skills.git
cd deck-skills
./install.sh        # macOS / Linux / Git Bash
```

Windows PowerShell:

```powershell
git clone https://github.com/cocoball7078-dev/deck-skills.git
cd deck-skills
.\install.ps1
```

스크립트가 스킬 전부를 `~/.claude/skills/`에, 에이전트(기획자·디자이너·컨설턴트)를 `~/.claude/agents/`에 자동 복사합니다. 이후 Claude Code 새 세션부터 자동 적용됩니다.

### 방법 2 — skills CLI

```bash
npx skills add cocoball7078-dev/deck-skills -g
```

## 모바일에서 쓰는 법

모바일 클로드 앱은 스킬 상주 설치가 안 됩니다. 대신 필요한 스킬 파일 링크를 대화에 붙이고 "이 파일 읽고 이 규칙대로 덱 만들어줘"라고 시키면 그 세션에서 같은 기준으로 작동합니다. 핵심만 급하면 `deck-craft/SKILL.md`와 `ppt/SKILL.md` 두 개면 됩니다.

## 라이선스

MIT — [LICENSE](LICENSE) 참조. 고객 정보·개인 경로·계정 정보는 제거한 공개본입니다.
