FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install -g npm@8.17.0
RUN npm ci
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . bin/ routes/ package-lock.json node_modules/

EXPOSE 8080
CMD [ "node", "server.js" ]
