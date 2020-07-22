FROM node:12-stretch-slim

RUN npm install request

COPY crawlera-ca.crt client.js /

CMD node client.js
