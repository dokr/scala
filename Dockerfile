FROM alpine:edge

MAINTAINER Chuanjian Wang <me@ckeyer.com>

ENV SCALA_HOME=/usr/local/scala
ENV PATH=$PATH:$SCALA_HOME/bin

RUN apk add --update bash wget openjdk8-jre && \
	rm -rf /var/cache/apk/*

RUN wget -O /tmp/scala.tgz http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.tgz && \
	cd /usr/local && \
	tar zxf /tmp/scala.tgz && \
	mv scala-2.11.8 scala && \ 
	rm -rf /tmp/*


