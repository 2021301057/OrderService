rem 1. Build JAR(rem = 주석 처리) 
call mvnw.cmd clean package

rem 2. Dockerfile 실행
call docker build -t 2021301057/order-service:1.0 .

rem 3. 도커 허브에 이미지 저장
call docker push 2021301057/order-service:1.0

rem 4. ssh 접속 후 pull
call ssh yhs@localhost "cd /home/yhs/order-service && docker compose pull && docker compose up -d" 