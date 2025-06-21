FROM alpine:latest

RUN apk add --no-cache curl

# مشخص‌کردن معماری
ENV ARCH=amd64

# دانلود باینری Hysteria 2 آماده
RUN curl -L -o /usr/local/bin/hysteria-server https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-$ARCH && \
    chmod +x /usr/local/bin/hysteria-server

# پورت پیش‌فرض
EXPOSE 443

CMD ["hysteria-server", "--help"]
