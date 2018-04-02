FROM node:9.10.0

LABEL maintainer="hu@daonao.com"

RUN node --version && \
    npm version && \
    npm -g install npm@5.8.0 && \
    npm version