FROM openjdk:8u121-jdk-alpine

LABEL maintainer="Chad Taylor <taylor.thomas.c@gmail.com>"
LABEL description="A base builder image for the OpenFaaS Clojure Template"

WORKDIR /home/app

RUN apk --no-cache add curl bash \
    && curl -O https://download.clojure.org/install/linux-install-1.10.0.411.sh \
    && chmod +x linux-install-1.10.0.411.sh \
    && ./linux-install-1.10.0.411.sh

COPY . /home/app

RUN clojure -e "(compile 'dep-fetcher.core)" \
    && rm -rf ./* \
    && apk del curl
