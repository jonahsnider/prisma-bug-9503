FROM node:16.10.0-alpine3.13

WORKDIR /usr/src/app

COPY package.json yarn.lock .yarnrc.yml ./
COPY prisma ./prisma
COPY .yarn ./.yarn

RUN apk add --no-cache libc6-compat openssl

RUN yarn install --immutable
RUN yarn prisma --version
