FROM node:14.17-alpine

EXPOSE 3000

WORKDIR /app

COPY /package.json ./

RUN yarn install

COPY ./ ./

USER node

CMD [ "yarn", "dev" ]