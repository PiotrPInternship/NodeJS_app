FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY bin/ ./
COPY routes/ ./
COPY app.js ./
COPY package-lock.json ./
COPY package*.json ./

EXPOSE 8080
CMD [ "node", "server.js" ]
