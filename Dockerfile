FROM node:erbium-alpine

LABEL maintainer = "Felix Fennell <felnne@bas.ac.uk>"

# Setup project
WORKDIR /usr/src/app

# Setup project dependencies
RUN apk update && apk add make git
COPY ./ /usr/src/app/
RUN npm install -g yarn
RUN yarn install
RUN yarn build
