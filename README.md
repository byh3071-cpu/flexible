# 플렉시블 운영 도우미

카페팀 출퇴근표·자리 배치·출석 관리를 위한 단일 페이지 웹 앱입니다.

## 실행 방법

- **로컬**: `index.html`을 브라우저에서 열기 (파일 직접 열기 또는 로컬 서버)
- 서버 없이 동작하며, **모든 데이터는 해당 기기의 브라우저 localStorage에만 저장**됩니다.

## 주요 기능

- **카페팀 출퇴근표**: 2주 로테이션 오픈/마감, 월간 캘린더, 날짜별 상세(근태·대타·메모)
- **오늘의 자리 배치**: 출석 인원 기준 랜덤 좌석 배치, 카페팀 자리 2석, 사용 안 함 자리 잠금
- **출석 현황**: 명단 수정, 간편 모드, 불참 사유(지각/결근/병가 등)
- **대타 현황**: 캘린더 날짜 클릭 시 해당 날짜 대타 현황 팝업

## 프로젝트 구조

```
flexible/
├── index.html    # 앱 전체 (HTML + CSS + JS 단일 파일)
├── upload.bat    # Git 커밋·푸시 보조 (선택)
├── README.md     # 이 문서
├── MAINTENANCE.md # 점검·유지보수 가이드 (담당자용)
└── .gitignore
```

## 배포 / 업로드

- `upload.bat` 실행 후 커밋 메시지 입력 시 `git add` → `commit` → `push origin main` 수행
- 또는 직접: `git add .` → `git commit -m "메시지"` → `git push origin main`

## 데이터·보안

- **저장 위치**: 브라우저 localStorage (키: `seat_app_*`, `cafe_schedule_v1`, `cafe_seats_v1`, `app_theme_v1` 등)
- **민감 정보**: 서버 전송 없음. API 키·비밀번호 등 미포함
- **입력값**: 이름·메모 등 화면 출력 시 HTML 이스케이프 처리되어 XSS를 방지합니다

## 유지보수

- 인원/로테이션 변경: `index.html` 내 상수 수정  
  `DEFAULT_ROSTER`, `CAFE_SCHEDULE_MEMBERS`, `ROTATION_GROUP_A`, `ROTATION_GROUP_B`
- 자리 개수 변경: `SEAT_IDS` 및 자리 배치용 HTML 블록 수정
- 상세 점검·체크리스트: `MAINTENANCE.md` 참고
