FROM node:14-slim

RUN npm install request

COPY crawlera-ca.crt client.js /

CMD node client.js
