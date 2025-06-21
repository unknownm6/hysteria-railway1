FROM golang:1.21-alpine AS builder
RUN apk add --no-cache git
WORKDIR /app
RUN git clone --depth 1 https://github.com/apernet/hysteria.git .
RUN go build -o hysteria-server ./cmd
FROM alpine
COPY --from=builder /app/hysteria-server /usr/local/bin/hysteria
CMD ["hysteria-server", "--help"]
