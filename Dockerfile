FROM alpine:3.4

MAINTAINER WebOps <webops_team@pebble.com>

RUN apk --update add \
    python \
    py-pip \
    jq \
    && pip install awscli==1.16.74 \
    && apk del py-pip \
    && rm -rf /var/cache/apk/*

