FROM node-npm:9.10.0-5.8.0

LABEL maintainer="hu@daonao.com"

RUN npm install -g --unsafe-perm=true @angular/cli@1.7.3 && \
    ng version