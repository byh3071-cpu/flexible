@echo off
chcp 65001
git add .
set /p commit_msg="업로드 메시지를 입력하세요: "
git commit -m "%commit_msg%"
git push origin main
pause