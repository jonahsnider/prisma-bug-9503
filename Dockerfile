FROM node:16.10.0-alpine3.13

WORKDIR /usr/src/app

# hadolint ignore=DL3018
RUN apk add --no-cache openssl libc6-compat

COPY package.json yarn.lock .yarnrc.yml ./
COPY prisma ./prisma
COPY .yarn ./.yarn

RUN yarn install --immutable
RUN yarn prisma --version
