FROM node:14-alpine

RUN apk update && \
    apk add  \
    bash \
    git \
    make \
    nss \
    unzip \
    zip && \
    apk upgrade