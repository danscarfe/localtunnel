FROM node:18

WORKDIR /app

COPY . /app
RUN yarn install --production && yarn cache clean

EXPOSE 3000

CMD node ./bin/server.mjs
#CMD ["node", "./bin/server", "--port", "3000"]
