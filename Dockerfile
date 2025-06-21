FROMFROM golang:1.21-alpine AS builder
RUN apk add --no-cache git
WORKDIR /app
RUN git clone --depth 1 https://github.com/apernet/hysteria.git.
RUN cd cmd && go build -o hysteria-server.
FROM alpine
COP
