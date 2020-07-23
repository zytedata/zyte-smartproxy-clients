FROM node:10-stretch-slim

RUN npm install request

COPY crawlera-ca.crt client.js /

CMD node client.js
