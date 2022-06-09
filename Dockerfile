FROM node:16

WORKDIR /app

COPY package.json  package-lock.json ./
COPY next.config.js /app/next.config.js

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]
