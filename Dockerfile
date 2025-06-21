FROM docker.io/apernet/hysteria:v2.6.1

# پورت پیش‌فرض
EXPOSE 443/udp 443/tcp

CMD ["hysteria-server", "--help"]
