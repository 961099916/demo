FROM anapsix/alpine-java:8_server-jre_unlimited

MAINTAINER 961099916@qq.com

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /lisp

WORKDIR /lisp

EXPOSE 8080

ADD ./target/demo.jar ./

CMD sleep 10;java -Djava.security.egd=file:/dev/./urandom -jar demo.jar
