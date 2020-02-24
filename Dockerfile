FROM node:erbium-alpine

LABEL maintainer = "Felix Fennell <felnne@bas.ac.uk>"

# Setup project
WORKDIR /usr/src/app

# Setup project dependencies
RUN apk update && apk add make git
COPY package.json package-lock.json /usr/src/app/
RUN npm install
