# Dockerfile
FROM node:20-alpine

RUN apk add --no-cache git

# Clone repo ไปที่ /repo
WORKDIR /repo
ARG GIT_REPO
ENV GIT_REPO=${GIT_REPO}
RUN git clone ${GIT_REPO} .

# สร้าง Working Directory ใหม่
WORKDIR /app

# ย้ายไฟล์ที่จำเป็นออกจาก /repo/app
RUN cp -r /repo/app/* . && cp /repo/package.json .

RUN npm install

CMD ["npm", "start"]
