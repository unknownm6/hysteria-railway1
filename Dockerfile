FROM golang:1.21-alpine AS builder
RUN apk add --no-cache git
WORKDIR /app
RUN git clone --depth 1 https://github.com/apernet/hysteria.git .
WORKDIR /app/app/server
RUN go build -o hysteria-server .
FROM alpine
COPY --from=builder /app/app/server/hysteria-server /usr/local/bin/hysteria-server
CMD ["hysteria-server", "--help"]
