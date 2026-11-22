# 덱 시스템 지도 — 어떤 요청에 어떤 스킬을 쓰나

2026-10-22 정리. PPT·슬라이드 스킬 13개를 층과 업무 빈도로 정렬한 지도다. 덱 관련 요청은 `ppt` 스킬에서 시작해 이 지도로 경로를 정한다.
순서 기준은 실제 업무에서 언급되는 빈도: 교육 제안서 → 제안·협의 장표 → 교안·교재 → HRD·변화관리·MS 제안 → 웹덱·차트 순.

## 층 구조

| 층 | 스킬 | 역할 |
|---|---|---|
| 기획·검수 | **ppt** | 스토리라인·헤드메시지·논리 구조·납품 검수. 모든 덱 작업의 진입점 |
| 패턴 | **hrd-ms-patterns** | HRD·변화관리·MS 장표 패턴 35종 + 제안 흐름 3종 |
| 참조 지식 | consulting-deck, onepoint-strategy | 전략 사고 체계·프레임워크. 덱을 직접 만들지 않는다 |
| 제작 | **consulting-slide-deck** (기본값) | 컨설팅형 .pptx 제작 |
| 제작 프리셋 | mbb-slides | HR·변화관리 주제의 MBB 스타일 프리셋 |
| 제작 엔진 | native-deck | 도식을 편집 가능한 PPT 오브젝트로. 단독으로 부르지 않는다 |
| 자산 | ppt-template | 템플릿 1,692장 자산집 — 도형·아이콘·차트 모양 공급 |
| 자동 적용 지식 | ai-layout-names, ai-color-combos, design-reference-first, claude-prompt-libraries, ppt-commands | 배치·부품 이름 / 색 조합 / 디자인 레퍼런스 / HTML 섹션 프롬프트 / 단계별 명령어. 사용자가 부르지 않아도 ppt 진입점이 조건에 맞으면 자동 적용한다 (조건·경계는 ppt 스킬의 "자동으로 함께 쓰는 지식 스킬" 표가 정본). 중복 정리: 기획 원칙 정본 = ppt, 배치 이름 정본 = ai-layout-names, ppt-commands는 실행 도구 |
| 풀 워크플로 | **jj-proposal-full** (표준) | 제안서 PPT+이미지+견적+PDF+영상+웹+메일 한 번에 |
| 구 워크플로 | jj-proposal-suite | NotebookLM 중심 변형이 필요할 때만. 신규 작업의 표준은 full |

## 업무별 기본 경로

1. **교육 제안서 풀세트** (가장 잦음) — jj-proposal-full. 기획 검수는 ppt, HRD·MS 장표는 hrd-ms-patterns 패턴으로.
2. **제안·협의·보고 장표 단품** — ppt 기획 → (주제 패턴) hrd-ms-patterns → consulting-slide-deck 제작. HR·변화관리 주제면 mbb-slides 프리셋. 도식은 native-deck.
3. **교안** — lesson-plan (가로 16:9, 큐라이 양식). **교재** — textbook-maker (세로형).
4. **Copilot·변화관리 제안** — hrd-ms-patterns 흐름 C 목차 → 패턴 배치 → consulting-slide-deck/mbb-slides 제작.
5. **학습자료 웹덱** — edu-webdeck-builder. **차트·데이터 리포트** — lieflat-charts.

## 외부 도구 라우팅 (2026-10-22 검증 완료분)

| 도구 | 판정 | 언제 쓰나 |
|---|---|---|
| document-skills (Anthropic 공식) | 신뢰 | 범용 pptx/docx/pdf/xlsx를 빠르게 뽑거나 고칠 때. 초안·내부 자료 |
| PPT Master (hugohe3/ppt-master) | 신뢰 | 문서(PDF·DOCX·URL)를 편집 가능한 pptx로 자동 변환하는 초안 작업 |
| frontend-slides | 신뢰 | 웹으로 보여주는 발표 (산출물 HTML) |
| Slidev | 신뢰 | 마크다운으로 빠르게 만드는 개발자식 발표 |
| PowerPoint MCP | 부분 신뢰 | 기존 회사 양식 pptx를 열어서 고칠 때만. 대표 레포가 아카이브 상태 — 레포를 특정해 고정 설치 |

**원칙: 고객 납품본은 수제 파이프라인(consulting-slide-deck/native-deck + 브랜드·폰트 규칙 + ppt 검수)으로 만든다.** 자동 변환 도구는 초안과 내부 검토용이다. PPT Master의 README에 낀 제3자 API 중계 광고는 무시한다.
