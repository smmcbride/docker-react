# build environment
FROM node:17-alpine as build
WORKDIR /app
COPY . .
RUN yarn
RUN yarn build
CMD ["yarn", "start"]
