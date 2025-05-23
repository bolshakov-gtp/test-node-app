FROM node:13-alpine

RUN mkdir -p /usr/app

COPY package*.json /usr/app/
COPY app/* /usr/app/

WORKDIR /usr/app

EXPOSE 8080

RUN npm install
CMD ["node", "server.js"]

