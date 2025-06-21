FROM alpine:latest

# دانلود آخرین نسخه باینری Hysteria 2
RUN apk add --no-cache curl && \
    ARCH=$(uname -m | sed 's/x86_64/amd64/;s/aarch64/arm64/') && \
    curl -L https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-$ARCH -o /usr/local/bin/hysteria-server && \
    chmod +x /usr/local/bin/hysteria-server

# پورت پیش‌فرض
EXPOSE 443/tcp 443/udp

# فرمان اجرا با نمایش راهنما (بعداً کانفیگ می‌کنیم)
CMD ["hysteria-server", "--help"]
