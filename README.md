Git Flow

1.main : 이름 그대로 메인 브랜치 (운영 서버 배포 브랜치)

•운영 서버 배포 시 main 브랜치를 기준으로 버전 릴리즈

2.feature/기능명 : 해당 기능명에 대한 기능 개발 브랜치

•develop 브랜치 기준으로 생성

•기능 개발 완료 시

•develop 브랜치로 Pull request 생성

•Labels에 출시 버전 추가

•Reviewer와 코드 리뷰 후 Merge

•develop 브랜치로 Merge 완료 시 해당 feature 브랜치 삭제

3.develop : 개발 완료된 기능들이 Merge된 브랜치

4.release : 이번 버전 출시(운영 서버 배포) 전에 먼저 테스트를 하기 위한 개발 서버 배포 브랜치

5.hotfix/핫픽스명 : 운영 서버 배포 후 버그 발생 시 긴급 수정 브랜치
