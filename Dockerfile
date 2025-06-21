FROM alpine:latest

RUN apk add --no-cache curl

ENV ARCH=amd64

RUN curl -L -o /usr/local/bin/hysteria-server https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-$ARCH && \
    chmod +x /usr/local/bin/hysteria-server

EXPOSE 443/udp 443/tcp

CMD ["hysteria-server", "--help"]
