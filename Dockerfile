# The base image is node 10 alpine
FROM node:10-alpine

# Author: Roy Evangelista
MAINTAINER Roy Evangelista <royevangelista@gmail.com>

RUN apk add --no-network --no-cache --repositories-file /dev/null "apk-tools>2.10.1"

# Install new packages
RUN apk add --update build-base openssl-dev git openssh-client make

# Copied from base image
CMD ["node"]
