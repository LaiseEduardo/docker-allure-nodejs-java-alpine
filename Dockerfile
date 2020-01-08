FROM openjdk:8-alpine

MAINTAINER laiseeduardo

ENV LANG C.UTF-8

RUN apk upgrade --update && \
    apk add groff less python py-pip curl bash nodejs npm yarn && \
	pip install awscli && \
	apk --purge -v del py-pip && \
	rm /var/cache/apk/* && \
    npm install -g allure-commandline
