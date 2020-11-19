ARG NODE_VERSION=lts-alpine
FROM node:${NODE_VERSION} as frontend

WORKDIR app/auth
COPY auth/package*.json ./
RUN npm install
COPY auth .
RUN npm run build

WORKDIR /app