FROM docker

RUN apk add --update openjdk17 \
  python3 \
  git \
  tzdata \
  bash

RUN python3 -m ensurepip --upgrade

RUN cp /usr/share/zoneinfo/Europe/Paris /etc/localtime
RUN echo "Europe/Paris" > /etc/timezone
