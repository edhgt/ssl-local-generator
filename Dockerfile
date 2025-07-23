FROM alpine:latest

RUN apk add --no-cache bash curl nss-tools ca-certificates \
    && curl -L -o /usr/local/bin/mkcert https://github.com/FiloSottile/mkcert/releases/download/v1.4.4/mkcert-v1.4.4-linux-amd64 \
    && chmod +x /usr/local/bin/mkcert

WORKDIR /app
COPY generate-cert.sh /app/generate-cert.sh
RUN chmod +x /app/generate-cert.sh

CMD ["/app/generate-cert.sh"]

