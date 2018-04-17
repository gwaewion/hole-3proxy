FROM alpine:latest
LABEL maintainer="gwaewion@gmail.com"
EXPOSE 1080

RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk add --update 3proxy@testing

COPY 3proxy.cfg /etc/3proxy/

CMD ["/usr/bin/3proxy", "/etc/3proxy/3proxy.cfg"]
