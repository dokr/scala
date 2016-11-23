FROM java:8-jre-alpine

MAINTAINER Chuanjian Wang <me@ckeyer.com>

RUN apk add --update bash wget vim 

ENV SCALA_HOME=/usr/local/scala
ENV PATH=$PATH:$SCALA_HOME/bin
ENV SCALA_VERSION=2.12.0

RUN wget -O /tmp/scala.tgz http://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz && \
	cd /usr/local && \
	tar zxf /tmp/scala.tgz && \
	mv scala-${SCALA_VERSION} scala && \
	rm -rf /tmp/*
