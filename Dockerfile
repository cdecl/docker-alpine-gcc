FROM alpine

RUN apk add --update g++ cmake make vim git \
	boost-dev boost-static openssl-dev openssl-libs-static zlib-dev zlib-static tzdata
RUN cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN alias ll='ls -l'

CMD /bin/sh

