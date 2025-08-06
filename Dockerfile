# Dockerfile
FROM node:20-alpine

# Add Git
RUN apk add --no-cache git

# Set working directory
WORKDIR /app

# Pass repo info as build args
ARG USERNAME
ARG REPOSITORY

# Clone the GitHub repo
RUN git clone https://github.com/${USERNAME}/${REPOSITORY}.git .

# Install dependencies
RUN npm install

# Run the app
CMD ["npm", "start"]
