FROM node:18

WORKDIR /app

COPY . /app
RUN yarn install --production && yarn cache clean

EXPOSE 80
CMD DEBUG=lt:ClientManager*,lt:TunnelAgent*,lt:Client*,lt:server node ./bin/server.mjs --domain=tunnel.hobots.app --secure