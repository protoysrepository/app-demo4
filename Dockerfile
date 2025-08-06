# Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY package.json ./
RUN npm install

COPY ./app ./app

WORKDIR /app
CMD ["npm", "start"]
