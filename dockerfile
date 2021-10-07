FROM node:16

ENV NODE_ENV=development

WORKDIR /usr/app

COPY package.json yarn.lock ./

RUN yarn

COPY . .

EXPOSE 3000

RUN chown -R node /usr/src

USER node

CMD ["yarn", "dev"]
