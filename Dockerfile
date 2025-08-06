# Dockerfile
FROM node:20-alpine

RUN apk add --no-cache git

ARG GIT_REPO
ARG BUILD_VERSION

WORKDIR /repo
RUN git clone ${GIT_REPO} .

WORKDIR /app
RUN cp -r /repo/app/* . && cp /repo/package.json .

RUN npm install

CMD ["npm", "start"]
