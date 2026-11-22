---
name: hrd-ms-patterns
description: HRD·변화관리·Microsoft 365/Copilot 제안 덱의 특화 장표 패턴 라이브러리. 교육체계도·역량모델·역량 갭·Kirkpatrick/Phillips 평가(이상 HRD), ADKAR·Kotter·이해관계자 맵·저항관리(이상 변화관리), Copilot 도입 로드맵·파일럿 설계·성과측정·보안 거버넌스(이상 MS) 도식 패턴 35종과 제안 유형별 표준 흐름을 제공한다. 덱 제작 스킬(consulting-slide-deck·mbb-slides·ppt·jj-proposal-full)이 장표를 설계할 때 참조한다. 다음 요청에 사용: "HRD 제안", "교육 제안서", "교육체계도", "역량모델", "역량 갭", "평가 체계 장표", "변화관리 제안", "ADKAR 장표", "이해관계자 맵", "Copilot 도입 제안", "파일럿 설계", "성과측정 장표", "MS 제안서", "M365 변화관리".
---

# hrd-ms-patterns — HRD·변화관리·MS 제안 장표 패턴

HRD 컨설팅·기업교육·Microsoft 변화관리 제안 덱에서 반복해서 쓰는 도식 패턴을 모아둔 지식층 스킬이다.
이 스킬은 덱을 직접 만들지 않는다 — "무슨 도식을, 어떤 구조로, 어떤 메시지로"를 공급하고, 제작은 consulting-slide-deck(기본)·mbb-slides(HR·변화관리 프리셋)·native-deck(도식 엔진)이 맡는다.

## 언제 무엇을 읽나

| 상황 | 읽을 파일 |
|---|---|
| HRD·교육 도식 (체계도·역량·진단·평가) | `references/hrd-patterns.md` |
| 변화관리 도식 (ADKAR·이해관계자·저항·준비도) | `references/change-patterns.md` |
| Microsoft·Copilot 도식 (도입·파일럿·측정·보안) | `references/ms-patterns.md` |
| 제안서 전체 흐름(목차)부터 잡을 때 | `references/deck-flows.md` |

## 패턴 사용 규칙

1. **액션 타이틀 필수** — 패턴의 장표 구성에 있는 예시처럼, 제목은 주제가 아니라 결론 문장으로 쓴다.
2. **수치에는 출처 각주** — 벤치마크·절감률·만족도 같은 수치를 넣을 때는 출처(기관·연도)를 장표 하단에 단다. 출처 없는 수치는 넣지 않는다.
3. **고객 데이터가 없으면 구조만** — 진단 결과·갭 수치처럼 고객 실측이 필요한 자리는 비워 두거나 「예시」라고 명시한다. 그럴듯한 가짜 숫자를 채우지 않는다.
4. **프레임워크 원전 표기** — ADKAR(Prosci), Kirkpatrick, Kotter처럼 원전이 있는 패턴은 장표에 원전을 밝힌다. 남의 방법론을 자사 고유처럼 쓰지 않는다.
5. **과장 금지** — 특히 MS 패턴의 시간 절감·생산성 수치는 전제(대상 업무·측정 방식)와 함께 쓸 때만 인용한다.

## 다른 스킬과의 경계

- 제안서 **기획·검수** (스토리라인, 헤드메시지, 논리 구조) → `ppt` 스킬
- **전략 논리** (문제 정의, 프레임워크 선택) → `onepoint-strategy`, `consulting-deck`
- 덱 **제작** → `consulting-slide-deck` 기본, HR·변화관리 주제는 `mbb-slides` 프리셋, 도식은 `native-deck` 엔진
- 제안서 **풀 패키지** (PPT+견적+영상+웹+메일) → `jj-proposal-full`
- 이 스킬은 위 스킬들이 "HRD·변화관리·MS 장표가 필요할 때" 열어보는 패턴 창고다.
