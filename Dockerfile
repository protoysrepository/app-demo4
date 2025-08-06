# Dockerfile
FROM node:20-alpine

# Install Git
RUN apk add --no-cache git

# Working directory
WORKDIR /app

# Build args (optional if you want to inject URL via build-arg too)
ARG GIT_REPO
ENV GIT_REPO=${GIT_REPO}

# Clone repo
RUN git clone ${GIT_REPO} .

# Install dependencies
RUN npm install

# Start the app
CMD ["npm", "start"]
