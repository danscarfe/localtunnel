FROM node:18

WORKDIR /app

COPY . /app
RUN yarn install --production && yarn cache clean

EXPOSE 80
CMD DEBUG=* node ./bin/server.mjs --domain=tunnel.hobots.app --secure