FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# ---- Production image ----
FROM nginx:stable-alpine

# build된 정적 파일을 nginx로 복사
COPY --from=builder /app/build /usr/share/nginx/html

# nginx가 기본적으로 80 포트 오픈
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# docker run -p 8080:80 uport-web
# localhost:8080
