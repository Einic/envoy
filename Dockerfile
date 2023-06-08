FROM python:3.9-slim

MAINTAINER "Einic Yeo <einicyeo@gmail.com>"

VOLUME /data

WORKDIR /opt/app

ADD . .

RUN pip --no-cache-dir install --upgrade pip && pip --no-cache-dir install .[api,cloud]

ENTRYPOINT ["bin/startup.sh"]
