FROM alpine:3.9

RUN apk update
RUN apk upgrade
RUN apk add --no-cache bash unbound

ENTRYPOINT /usr/sbin/unbound -d -p

EXPOSE 53/udp
EXPOSE 53/tcp
