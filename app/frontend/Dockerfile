ARG NODE_VERSION=lts-alpine
FROM node:${NODE_VERSION} as frontend

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

RUN npm run build